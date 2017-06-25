import 'dart:async';
import 'package:angular2/angular2.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'welcome-page',
  templateUrl: 'welcome_page.html',
  styleUrls: const ['welcome_page.css'],
  directives: const [
    MaterialButtonComponent,
  ],
)
class WelcomePageComponent {
  String get appTitle => 'Teamoji';

  String get appSubtitle => '\u{1F551} Team Status \u{1F680}';

  String get appIcon => '\u{1F63B}';

  String get signInMessage => 'sign in with google';

  String get appMainFooter => 'Powered by Firebase';

  String get appSubFooter => 'source on github';

  Future<Null> login() async {
    print('Login not implemented yet');
  }

}