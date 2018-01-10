import 'dart:async';
import 'package:Teamoji_tutorial/src/common/messages.dart';
import 'package:Teamoji_tutorial/src/emoji_render/emoji_render.dart';
import 'package:Teamoji_tutorial/src/homepage/homepage.dart';
import 'package:Teamoji_tutorial/src/services/firebase_service.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';

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
class WelcomePageComponent extends WelcomePageMessages implements OnInit{
  FirebaseService _fbService;
  Router _router;

  WelcomePageComponent(this._fbService, this._router);

  Future<Null> login() async {
      await _fbService.signIn();
      _gotoHomepageIfLoggedIn();
  }

  @override
  ngOnInit() {
    _gotoHomepageIfLoggedIn();
  }

  void _gotoHomepageIfLoggedIn() {
    if (_fbService.user != null) {
      _router.navigate(['Homepage']);
    }
  }
}
