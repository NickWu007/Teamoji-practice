import 'dart:async';
import 'package:Teamoji_tutorial/src/common/messages.dart';
import 'package:Teamoji_tutorial/src/emoji_render/emoji_render.dart';
import 'package:Teamoji_tutorial/src/services/firebase_service.dart';
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
  ],
)
class JoinTeamComponent extends  JoinTeamMessages{
  String newTeamName = null;

  Future<Null> join() async {
    print('you want to join team $newTeamName');
  }
}
