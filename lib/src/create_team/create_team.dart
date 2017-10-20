import 'dart:async';
import 'package:Teamoji_tutorial/src/common/messages.dart';
import 'package:Teamoji_tutorial/src/emoji_render/emoji_render.dart';
import 'package:Teamoji_tutorial/src/services/firebase_service.dart';
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
  ],
)
class CreateTeamComponent extends CreateTeamMessages {
  String newTeamName = null;
  FirebaseService _fbService;

  final StreamController _createTeamStream = new StreamController.broadcast();

  @Output()
  Stream get onCreate => _createTeamStream.stream;

  CreateTeamComponent(this._fbService);

  Future<Null> create() async {
    try {
      await _fbService.fbDatabase.ref('groups').push(newTeamName);
      _createTeamStream.add(null);
    } catch (error) {
      print("$runtimeType::create() -- $error");
    }
  }
}
