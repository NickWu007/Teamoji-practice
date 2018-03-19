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
class WelcomePageComponent extends WelcomePageMessages implements OnInit {
  StreamController<String> get stream => new StreamController.broadcast();

  @Output()
  Stream get onPageChange => stream.stream;

  FirebaseService _fbService;

  WelcomePageComponent(this._fbService);

  Future<Null> login() async {
    await _fbService.signIn();
    _gotoHomepageIfLoggedIn();
  }

  @override
  ngOnInit() {
    _gotoHomepageIfLoggedIn();
  }

  void _gotoHomepageIfLoggedIn() {
    if (_fbService.fbAuth.currentUser != null) {
      this.stream.add('homepage');
    }
  }
}
