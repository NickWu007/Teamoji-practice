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
    NgModel,
  ],
)
class CreateTeamComponent extends CreateTeamMessages {
  String newTeamName = null;

  Future<Null> create() async {
    print('You want to create a new team called: $newTeamName');
    newTeamName = '';
  }
}
