import 'dart:async';

import 'package:Teamoji_tutorial/src/common/messages.dart';
import 'package:Teamoji_tutorial/src/emoji_render/emoji_render.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'create-team',
  templateUrl: 'create_team.html',
  styleUrls: const ['create_team.css'],
  directives: const [
    EmojiRenderComponent,
    MaterialButtonComponent,
    MaterialInputComponent,
    MaterialIconComponent,
  ],
)
class CreateTeamComponent extends CreateTeamMessages {
  String newTeamName = null;

  final StreamController _createTeamStream = new StreamController.broadcast();

  @Output()
  Stream get onCreate => _createTeamStream.stream;

  Future<Null> create() async {
    try {
      _createTeamStream.add(newTeamName);
    } catch (error) {
      print("$runtimeType::create() -- $error");
    }
  }

  void returnToHomePage() => _createTeamStream.add(null);
}
