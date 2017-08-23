abstract class WelcomePageMessages {
  String get appTitle => 'Teamoji';

  String get appSubtitle => '\u{1F551} Team Status \u{1F680}';

  String get appIcon => '\u{1F63B}';

  String get signInMessage => 'sign in with google';

  String get appMainFooter => 'Powered by Firebase';

  String get appSubFooter => 'source on github';
}

abstract class CreateTeamMessages {
  String get createTeamPromptHeader => 'Feeling a little lonely?';

  String get createTeamPromptContent => 'Let\'s make a new team!';

  String get pageIcon => '\u{1F914}';

  String get createTeamButtonMessage => 'create team';
}