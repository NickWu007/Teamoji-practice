import 'dart:async';

import 'package:Teamoji_tutorial/src/common/message.dart';
import 'package:Teamoji_tutorial/src/common/messages.dart';
import 'package:Teamoji_tutorial/src/create_team/create_team.dart';
import 'package:Teamoji_tutorial/src/emoji_selector/emoji_selector.dart';
import 'package:Teamoji_tutorial/src/join_team/join_team.dart';
import 'package:Teamoji_tutorial/src/services/firebase_service.dart';
import 'package:Teamoji_tutorial/src/user_post/user_post.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:firebase/firebase.dart';

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
      JoinTeamComponent,
    ],
    templateUrl: 'homepage.html',
    styleUrls: const [
      'homepage.css',
    ])
class HomepageComponent extends HomepageMessages implements OnInit {
  FirebaseService _fbService;
  bool visible = false;
  String currentTeam = '';
  String currentComponent = 'homepage';

  final StreamController<String> stream = new StreamController.broadcast();

  @Output()
  Stream get onPageChange => stream.stream;

  List<Message> previousEmojis;

  List<String> teams;

  bool shouldShowAsDeepBlue(String team) => team == currentTeam;

  String get imageURL => _fbService.user.photoURL;

  HomepageComponent(this._fbService);

  void onChangeTeam(String team) {
    print('You want to change to team: $team');
    if (currentTeam == team) return;
    currentTeam = team;
    switchTeam();
  }

  Future onSelectEmoji(String emoji) async {
    currentComponent = 'homepage';
    if (emoji != null) {
      await _fbService.fbDatabase.ref('messages/' + currentTeam).push({
        'name': _fbService.user.displayName,
        'imageURL': _fbService.user.photoURL,
        'text': emoji.codeUnits,
        'timestamp': new DateTime.now().toString(),
      });
      print('$emoji pushed to firebase');
    }
  }

  Future onCreateTeam(String teamName) async {
    currentComponent = 'homepage';
    if (teamName == null) return;
    print("create team emoji wants to create $teamName");
    _fbService.fbDatabase.ref('messages/$teamName').onValue.listen((e) async {
      if (e.snapshot.val() == null) {
        print('should push to teams');
        await _fbService.fbDatabase
            .ref('users_teams/' + _fbService.fbAuth.currentUser.uid)
            .push(teamName);
        print("new team name pushed to firebase");
      }
    });
  }

  Future onJoinTeam() async {
    final uid = _fbService.user.uid;
    _fbService.fbDatabase
        .ref('users_teams/' + uid)
        .onValue
        .listen((event) async {
      DataSnapshot snapshot = event.snapshot;
      print(snapshot.val());
      if (snapshot.val() == 'empty') {
        await _fbService.fbDatabase
            .ref('users_teams/' + uid)
            .set(_fbService.groups);
        print("updated user team to non empty.");
      }
    });
  }

  Future onSignOut() async {
    await _fbService.signOut();
    stream.add('welcome');
  }

  @override
  ngOnInit() {
    _fbService.fbDatabase
        .ref('users_teams/' + _fbService.user.uid)
        .onValue
        .listen((e) {
      print('init database snapshot : ${e.snapshot.val()}');
      teams = [];
      Map rawTeams = e.snapshot.val();
      rawTeams.forEach((k, v) => teams.add(v));
      currentTeam = teams[0];
      switchTeam();
    });
  }

  void switchTeam() {
    previousEmojis = [];
    print('curent team: $currentTeam');
    _fbService.fbDatabase
        .ref('messages/' + currentTeam)
        .limitToLast(12)
        .onChildAdded
        .listen(buildPrevEmoji);
  }

  buildPrevEmoji(e) {
    Map rawMessages = e.snapshot.val();
    print(rawMessages);
    previousEmojis.insert(0, new Message.fromJson(rawMessages));
//    rawMessages.forEach((key, value) {
//      print(value);
//      previousEmojis.insert(0, new Message.fromJson(value));
//    });
  }
}
