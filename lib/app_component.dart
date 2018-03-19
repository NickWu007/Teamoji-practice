// Copyright (c) 2017, NickWu. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:Teamoji_tutorial/src/homepage/homepage.dart';
import 'package:Teamoji_tutorial/src/services/firebase_service.dart';
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
    FirebaseService,
  ],
)
class AppComponent implements OnInit {
  FirebaseService service;
  String currentPage = 'welcome';

  AppComponent(this.service);

  void onPageChange(String nextPage) => currentPage = nextPage;

  @override
  ngOnInit() {
    service.init();
    service.fbAuth.onAuthStateChanged.listen((user) {
      if (user != null) {
        currentPage = 'homepage';
      }
    });
  }
}
