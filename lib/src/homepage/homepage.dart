import 'dart:async';

import 'package:Teamoji_tutorial/src/common/message.dart';
import 'package:Teamoji_tutorial/src/common/messages.dart';
import 'package:Teamoji_tutorial/src/create_team/create_team.dart';
import 'package:Teamoji_tutorial/src/emoji_selector/emoji_selector.dart';
import 'package:Teamoji_tutorial/src/user_post/user_post.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
    selector: 'homepage',
    directives: const [
      DeferredContentDirective,
      MaterialButtonComponent,
      MaterialDialogComponent,
      MaterialFabComponent,
      MaterialIconComponent,
      MaterialListComponent,
      MaterialListItemComponent,
      MaterialTemporaryDrawerComponent,
      ModalComponent,
      NgFor,
      NgIf,
      UserPostComponent,
      CreateTeamComponent,
      NgSwitch,
      NgSwitchWhen,
      EmojiSelectorComponent,
    ],
    templateUrl: 'homepage.html',
    styleUrls: const [
      'homepage.css',
    ])
class HomepageComponent extends HomepageMessages implements OnInit {
  bool visible = false;
  String currentComponent = 'homepage';

  List<Message> previousEmojis = [
    new Message('Nick', 'images/profile_placeholder.png', '\u{1F60B}',
        new DateTime.now()),
    new Message('Nick', 'images/profile_placeholder.png', '\u{1F60B}',
        new DateTime.now()),
    new Message('Nick', 'images/profile_placeholder.png', '\u{1F60B}',
        new DateTime.now()),
    new Message('Nick', 'images/profile_placeholder.png', '\u{1F60B}',
        new DateTime.now()),
    new Message('Nick', 'images/profile_placeholder.png', '\u{1F60B}',
        new DateTime.now()),
  ];

  List<String> teams = ['google', 'angular', 'firebase'];

  final StreamController<String> stream = new StreamController.broadcast();

  @Output()
  Stream get onPageChange => stream.stream;

  bool shouldShowAsDeepBlue(String team) => false;

  Future onSelectEmoji(Message message) async {
    currentComponent = 'homepage';
    // TODO: use firebase database to push new message.
  }

  Future onCreateTeam(String teamName) async {
    currentComponent = 'homepage';
    if (teamName == null) return;
    // TODO: use firebase database to create new page.
  }

  Future onSignOut() async {
    // TODO: use firebase authentication to log out.
    stream.add('welcome');
  }

  @override
  ngOnInit() {
    // TODO: use firebase database to build the teams.
  }
}
