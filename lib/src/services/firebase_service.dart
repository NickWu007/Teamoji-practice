import 'dart:async';
import 'package:angular/core.dart';
import 'package:firebase/firebase.dart' as fb;
import 'secret.dart' as secret;

@Injectable()
class FirebaseService {
  fb.Auth _fbAuth;
  fb.GoogleAuthProvider _fbGoogleAuthProvider;
  fb.Database fbDatabase;
  fb.DatabaseReference _fbRefMessages;
  fb.User user;
  List<String> groups;

  FirebaseService() {
    secret.init();

    _fbGoogleAuthProvider = new fb.GoogleAuthProvider();
    _fbAuth = fb.auth();
    _fbAuth.onAuthStateChanged.listen(_authChanged);
    fbDatabase = fb.database();
    _fbRefMessages = fbDatabase.ref('groups');
  }

  void _authChanged(fb.User event) {
    user = event;
    if (user != null) {
      groups = [];
      _fbRefMessages.onChildAdded
          .listen((event) {
        print(event.snapshot.val());
        groups.add(event.snapshot.val());
      });
    }
  }

  Future signIn() async {
    try {
      await _fbAuth.signInWithPopup(_fbGoogleAuthProvider);
    } catch (error) {
      print("$runtimeType::login() -- $error");
    }
  }

  void signOut() {
    _fbAuth.signOut();
  }
}
