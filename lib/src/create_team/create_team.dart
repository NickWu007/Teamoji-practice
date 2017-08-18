import 'dart:async';
import 'package:angular2/core.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'create-team',
  templateUrl: 'create_team.html',
  styleUrls: const ['create_team.css'],
  directives: const [
    MaterialButtonComponent,
    MaterialInputComponent,
    NgModel,
  ],
)
class CreateTeamComponent {

  String get createTeamPromptHeader => 'Feeling a little lonely?';

  String get createTeamPromptContent => 'Let\'s make a new team!';

  String get pageIcon => '\u{1F914}';

  String get createTeamButtonMessage => 'create team';

  String newTeamName = null;

  Future<Null> create() async {
    print('You want to create a new team called: $newTeamName');
    newTeamName = '';
  }
}