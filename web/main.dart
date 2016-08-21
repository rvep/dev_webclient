// Copyright (c) 2016, borysn. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular2/platform/common.dart';
import 'package:angular2/platform/browser.dart';
import 'package:angular2/router.dart';
import 'package:polymer/polymer.dart';
import 'package:polymer_elements/paper_styles.dart';
import 'package:polymer_elements/iron_flex_layout_classes.dart';
import 'package:polymer_elements/typography.dart';
import 'package:firebase3/firebase.dart' as firebase;
import 'package:dev_webclient/rvep.dart';
import 'package:dev_webclient/services/auth/firebase_auth_service.dart';
import 'package:dev_webclient/services/auth/auth_service.dart';
import 'package:dev_webclient/services/auth/verify_auth_service.dart';

main() async {
  // init firebase
  firebase.initializeApp(
    apiKey: "AIzaSyC1aHWikGh18FBBwuVbSGuUu1lQvWCOUnY",
    authDomain: "rvep-1212.firebaseapp.com",
    databaseURL: "https://rvep-1212.firebaseio.com",
    storageBucket: "rvep-1212.appspot.com");

  // init polymer
  await initPolymer();

  // bootstrap
  bootstrap(Rvep, [
    AuthService,
    VerifyAuthService,
    FirebaseAuthService,
    ROUTER_PROVIDERS,
    provide(LocationStrategy, useClass: HashLocationStrategy)]);
}