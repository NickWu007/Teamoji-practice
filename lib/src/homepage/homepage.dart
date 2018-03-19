import 'dart:async';

import 'package:Teamoji_tutorial/src/common/message.dart';
import 'package:Teamoji_tutorial/src/common/messages.dart';
import 'package:Teamoji_tutorial/src/create_team/create_team.dart';
import 'package:Teamoji_tutorial/src/emoji_selector/emoji_selector.dart';
import 'package:Teamoji_tutorial/src/services/firebase_service.dart';
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
  FirebaseService service;
  bool visible = false;
  String currentComponent = 'homepage';

  final StreamController<String> stream = new StreamController.broadcast();

  @Output()
  Stream get onPageChange => stream.stream;

  bool shouldShowAsDeepBlue(String team) => team == service.currentTeam;

  String get imageURL => service.user.photoURL;

  HomepageComponent(this.service);

  Future onSelectEmoji(Message message) async {
    currentComponent = 'homepage';
    await service.postNewMessage(message);
  }

  Future onCreateTeam(String teamName) async {
    print('create event sent to homepage');
    currentComponent = 'homepage';
    if (teamName == null) return;
    print("create team emoji wants to create $teamName");
    await service.createTeam(teamName);
  }

  Future onSignOut() async {
    await service.signOut();
    stream.add('welcome');
  }

  @override
  ngOnInit() {
   service.buildTeams();
  }
}
