import 'dart:async';

import 'package:Teamoji_tutorial/src/common/messages.dart';
import 'package:Teamoji_tutorial/src/emoji_render/emoji_render.dart';
import 'package:Teamoji_tutorial/src/return_button/return_button.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'join-team',
  templateUrl: 'join_team.html',
  styleUrls: const ['join_team.css'],
  directives: const [
    EmojiRenderComponent,
    MaterialButtonComponent,
    MaterialInputComponent,
    MaterialSpinnerComponent,
    NgIf,
    ReturnButtonComponent,
  ],
)
class JoinTeamComponent extends JoinTeamMessages {
  bool running = false;

  String newTeamName = null;

  final StreamController joinTeamStream = new StreamController.broadcast();

  @Output()
  Stream get onJoin => joinTeamStream.stream;

  Future<Null> join() async {
    print('you want to join team $newTeamName');
    running = true;

    // TODO: firebase

    running = false;

    joinTeamStream.add(null);
  }

  String get buttonText => running ? '' : joinTeamButtonMessage;
}
