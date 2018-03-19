import 'dart:async';
import 'package:Teamoji_tutorial/src/common/message.dart';
import 'package:angular/core.dart';
import 'package:firebase/firebase.dart' as fb;
import 'secret.dart' as secret;

@Injectable()
class FirebaseService {
  fb.Auth fbAuth;
  fb.GoogleAuthProvider _fbGoogleAuthProvider;
  fb.Database fbDatabase;
  fb.User user;
  List<String> groups;
  List<Message> previousEmojis = [];
  List<String> teams = [];
  String currentTeam = '';

  FirebaseService() {
    secret.init();

    _fbGoogleAuthProvider = new fb.GoogleAuthProvider();
    fbAuth = fb.auth();
    fbDatabase = fb.database();
  }

  void init() {
    fbAuth.onAuthStateChanged.listen((user) => this.user = user);
  }

  void buildTeams() {
    fbDatabase
        .ref('users_teams/' + user.uid)
        .onValue
        .listen((e) {
      print('init database snapshot : ${e.snapshot.val()}');
      teams = [];
      Map rawTeams = e.snapshot.val();
      rawTeams.forEach((k, v) => teams.add(v));
      currentTeam = teams[0];
      switchTeam();
    });
  }

  void changeTeam(String team) {
    print('You want to change to team: $team');
    if (currentTeam == team) return;
    currentTeam = team;
    switchTeam();
  }

  void switchTeam() {
    previousEmojis = [];
    print('curent team: ${currentTeam}');
    fbDatabase
        .ref('messages/' + currentTeam)
        .onChildAdded
        .listen(_buildPrevEmoji);
  }

  _buildPrevEmoji(e) {
    Map rawMessages = e.snapshot.val();
    previousEmojis.insert(0, new Message.fromJson(rawMessages));
  }

  Future postNewMessage(Message message) async {
    if (message != null) {
      await fbDatabase
          .ref('messages/' + currentTeam)
          .push(Message.toMap(message))
          .future;
    }
  }

  Future createTeam(String teamName) async {
    await fbDatabase
        .ref('users_teams/' + fbAuth.currentUser.uid)
        .push(teamName);
  }

  Future signIn() async {
    try {
      await fbAuth.signInWithPopup(_fbGoogleAuthProvider);
      if (fbAuth.currentUser != null) {
        user = fbAuth.currentUser;
        final defaultGroups = ['general'];
        fbDatabase
            .ref('users_teams/' + fbAuth.currentUser.uid)
            .onValue
            .listen((event) async {
          if (event.snapshot.val() == null) {
            print('Init general group');
            await fbDatabase
                .ref('users_teams/' + fbAuth.currentUser.uid)
                .set(defaultGroups);
          }
          ;
        });
      }
    } catch (error) {
      print("$runtimeType::login() -- $error");
    }
  }

  signOut() async => await fbAuth.signOut();
}
