import 'dart:async';
import 'package:angular/core.dart';
import 'package:firebase/firebase.dart' as fb;
import 'secret.dart' as secret;

@Injectable()
class FirebaseService {
  fb.Auth fbAuth;
  fb.GoogleAuthProvider _fbGoogleAuthProvider;

  FirebaseService() {
    secret.init();

    _fbGoogleAuthProvider = new fb.GoogleAuthProvider();
    fbAuth = fb.auth();
  }

  Future signIn() async {
    try {
      await fbAuth.signInWithPopup(_fbGoogleAuthProvider);
    } catch (error) {
      print("$runtimeType::login() -- $error");
    }
  }

  signOut() async => await fbAuth.signOut();
}