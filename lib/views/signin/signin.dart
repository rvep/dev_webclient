// Copyright (c) 2016, borysn. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library dev_webclient.lib.views.signin;

import 'package:angular2/core.dart';
import 'package:angular2/common.dart';
import 'package:polymer_elements/paper_button.dart';
import 'package:dev_webclient/services/auth/firebase_auth_service.dart';

@Component(
  selector: 'signin',
  styleUrls: const ['signin.css'],
  templateUrl: 'signin.html',
  directives: const [CORE_DIRECTIVES])
class Signin {
  FirebaseAuthService fbAuthService;

  Signin(FirebaseAuthService this.fbAuthService) {}

  void signIn() {
    this.fbAuthService.signIn();
  }
}