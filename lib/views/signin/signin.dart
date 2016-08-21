// Copyright (c) 2016, borysn. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library dev_webclient.lib.views.signin;

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:polymer_elements/paper_button.dart';
import 'package:dev_webclient/services/auth/auth_service.dart';

@Component(
  selector: 'signin',
  styleUrls: const ['signin.css'],
  templateUrl: 'signin.html')
class Signin implements OnInit {
  Router _router;
  AuthService _authService;

  Signin(AuthService this._authService, Router this._router) {}

  ngOnInit() {
    // check auth state
    if (this._authService.isAuthorized()) {
      // if not authorized, navigate back to signin page
      this._router.navigate(['Dashboard']);
    }
  }

  void signIn() {
    this._authService.signIn();
  }
}