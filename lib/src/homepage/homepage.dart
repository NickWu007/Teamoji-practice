import 'package:Teamoji_tutorial/src/common/messages.dart';
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
      UserPostComponent,
    ],
    templateUrl: 'homepage.html',
    styleUrls: const [
      'homepage.css',
    ])
class HomepageComponent extends HomepageMessages{
  bool visible = false;
  String _currentTeam = '';

  List<String> _mockEmojiList = const [
    '\u{1F60B}',
    '\u{1F60E}',
    '\u{1F60D}',
    '\u{1F618}',
    '\u{1F617}',
    '\u{1F619}',
    '\u{1F61A}',
    '\u{1F607}',
    '\u{1F610}',
    '\u{1F611}',
    '\u{1F636}',
    '\u{1F60F}',
  ];

  List<String> _mockTeamList = const [
    'Google',
    'Firebase',
  ];

  List<String> get previousEmojis => _mockEmojiList;

  List<String> get teams => _mockTeamList;

  bool shouldShowAsDeepBlue(String team) => team == _currentTeam;

  void onChangeTeam(String team) {
    print('You want to change to team: $team');
    _currentTeam = team;
  }

  void onAddPost() => print('should show select emoji component');

  void onCreateTeam() => print('You want to create a new team!');

  void onSignOut() => print('You want to sign out!');
}
