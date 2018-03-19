// Copyright (c) 2017, NickWu. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:Teamoji_tutorial/src/services/firebase_service.dart';
import 'package:angular/angular.dart';

import 'package:Teamoji_tutorial/app_component.dart';

void main() {
  bootstrap(AppComponent, [
    FirebaseService,
  ]);
}
