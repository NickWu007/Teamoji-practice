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
class WelcomePageComponent extends WelcomePageMessages {
  final StreamController<String> stream = new StreamController.broadcast();
  final FirebaseService service;

  WelcomePageComponent(this.service);

  @Output()
  Stream get onPageChange => stream.stream;

  Future<Null> login() async {
    await service.signIn();
    if (service.fbAuth.currentUser != null) stream.add('homepage');
  }
}
