// Copyright (c) 2017, NickWu. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:Teamoji_tutorial/src/homepage/homepage.dart';
import 'package:Teamoji_tutorial/src/welcome/welcome_page.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [
    materialDirectives,
    WelcomePageComponent,
    HomepageComponent,
    NgSwitch,
    NgSwitchWhen,
  ],
  providers: const [
    materialProviders,
  ],
)
class AppComponent implements OnInit {
  String currentPage = 'homepage';

  void onPageChange(String nextPage) => currentPage = nextPage;

  @override
  ngOnInit() {
    // TODO: use firebase to check if the user is already logged in.
  }
}
