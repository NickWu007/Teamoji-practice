// Copyright (c) 2017, NickWu. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:Teamoji_tutorial/src/create_team/create_team.dart';
import 'package:Teamoji_tutorial/src/welcome/welcome_page.dart';
import 'package:angular2/angular2.dart';
import 'package:angular_components/angular_components.dart';


// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives, WelcomePageComponent, CreateTeamComponent],
  providers: const [materialProviders],
)
class AppComponent {
}
