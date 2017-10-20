import 'dart:async';
import 'package:Teamoji_tutorial/src/common/messages.dart';
import 'package:Teamoji_tutorial/src/emoji_render/emoji_render.dart';
import 'package:Teamoji_tutorial/src/homepage/homepage.dart';
import 'package:Teamoji_tutorial/src/services/firebase_service.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'welcome-page',
  templateUrl: 'welcome_page.html',
  styleUrls: const ['welcome_page.css'],
  directives: const [
    MaterialButtonComponent,
    EmojiRenderComponent,
    NgIf,
    HomepageComponent,
  ],
)
class WelcomePageComponent extends WelcomePageMessages{
  FirebaseService _fbService;

  bool get userLoggedIn => _fbService.user != null;

  WelcomePageComponent(this._fbService);

  Future<Null> login() async {
    if (_fbService.user != null) {
      print('Already signed in as: ${_fbService.user.displayName}');
    } else {
      await _fbService.signIn();
    }
  }
}
