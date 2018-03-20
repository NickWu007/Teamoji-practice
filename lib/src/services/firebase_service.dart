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
  List<String> groups;
  Map<String,List<Message>> previousEmojiMap = {};
  List<String> teams = [];
  String currentTeam = '';

  List<Message> get previousEmojis => previousEmojiMap.containsKey(currentTeam) ? previousEmojiMap[currentTeam] : [];

  FirebaseService() {
    secret.init();

    _fbGoogleAuthProvider = new fb.GoogleAuthProvider();
    fbAuth = fb.auth();
    fbDatabase = fb.database();
  }

  void buildTeams() {
    fbDatabase.ref('users_teams/' + fbAuth.currentUser.uid).onValue.listen((e) {
      teams = [];
      Map rawTeams = e.snapshot.val();
      if (rawTeams == null) return;
      rawTeams.forEach((k, v) => teams.add(v));
      changeTeam(teams[0]);
    });
  }

  void changeTeam(String team) {
    if (currentTeam == team) return;
    currentTeam = team;
    switchTeam();
  }

  void switchTeam() {
    // return if there is already a lister.
    if (previousEmojiMap.containsKey(currentTeam)) return;

    previousEmojiMap[currentTeam] = [];
    // Register listener
    fbDatabase
        .ref('messages/' + currentTeam)
        .onChildAdded
        .listen((e) => _buildPrevEmoji(e, currentTeam));
  }

  _buildPrevEmoji(e, team) {
    Map rawMessages = e.snapshot.val();
    previousEmojiMap[team].insert(0, new Message.fromJson(rawMessages));
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
        .push(teamName).future;
  }

  Future signIn() async {
    try {
      await fbAuth.signInWithPopup(_fbGoogleAuthProvider);
      if (fbAuth.currentUser != null) {
        fbDatabase
            .ref('users_teams/' + fbAuth.currentUser.uid)
            .once('value')
            .then((event) async {
          if (event.snapshot.val() == null) {
            await fbDatabase
                .ref('users_teams/' + fbAuth.currentUser.uid)
                .push('general').future;
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
