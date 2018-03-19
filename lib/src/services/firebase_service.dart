import 'dart:async';
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

  FirebaseService() {
    secret.init();

    _fbGoogleAuthProvider = new fb.GoogleAuthProvider();
    fbAuth = fb.auth();
    fbAuth.onAuthStateChanged.listen((user) => this.user = user);
    fbDatabase = fb.database();
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
