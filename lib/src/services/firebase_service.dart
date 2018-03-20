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
  List<Message> previousEmojis = [];
  List<String> teams = [];
  String currentTeam = '';

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
      currentTeam = teams[0];
      switchTeam();
    });
  }

  void changeTeam(String team) {
    if (currentTeam == team) return;
    currentTeam = team;
    switchTeam();
  }

  void switchTeam() {
    previousEmojis = [];
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
        fbDatabase
            .ref('users_teams/' + fbAuth.currentUser.uid)
            .onValue
            .listen((event) async {
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
