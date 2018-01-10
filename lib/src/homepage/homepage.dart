import 'dart:async';
import 'package:Teamoji_tutorial/src/common/messages.dart';
import 'package:Teamoji_tutorial/src/create_team/create_team.dart';
import 'package:Teamoji_tutorial/src/emoji_selector/emoji_selector.dart';
import 'package:Teamoji_tutorial/src/services/firebase_service.dart';
import 'package:Teamoji_tutorial/src/user_post/user_post.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

enum ShowingComponent {
  homepage, create_team, emoji_selector,
}

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
class HomepageComponent extends HomepageMessages{
  FirebaseService _fbService;
  bool visible = false;
  String _currentTeam = '';
  String currentComponent = 'homepage';

  final showingComponent = ShowingComponent;

  List<String> _mockEmojiList = const [
    '\u{1F60B}',
    '\u{1F60E}',
    '\u{1F60D}',
    '\u{1F618}',
    '\u{1F617}',
    '\u{1F619}',
  ];

  List<String> get previousEmojis => _mockEmojiList;

  List<String> get teams => _fbService.groups;

  bool shouldShowAsDeepBlue(String team) => team == _currentTeam;

  HomepageComponent(this._fbService);

  void onChangeTeam(String team) {
    print('You want to change to team: $team');
    _currentTeam = team;
  }

  void onAddPost() {
    print('should show select emoji component');
    currentComponent = 'select';
  }

  void onSelectEmoji(String emoji) {
    currentComponent = 'homepage';
    if (emoji != null) {
      print("emoji selection page selected $emoji");
    }
  }

  void onCreateTeam(String teamName) {
    currentComponent = 'homepage';
    print("create team emoji wants to create $teamName");
  }

  Future onSignOut() async => await _fbService.signOut();
}
