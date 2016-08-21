// Copyright (c) 2016, borysn. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library dev_webclient.lib.views.dashboard;

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:polymer_elements/paper_button.dart';
import 'package:dev_webclient/services/auth/auth_service.dart';

@Component(
  selector: 'dashboard',
  styleUrls: const ['dashboard.css'],
  templateUrl: 'dashboard.html',
  directives: const [ROUTER_DIRECTIVES])
class Dashboard implements OnInit {
  Router _router;
  AuthService _authService;

  Dashboard(AuthService this._authService, Router this._router) {}

  ngOnInit() {
    // check auth state
    if (!this._authService.isAuthorized()) {
      // if not authorized, navigate back to signin page
      this._router.navigate(['Signin']);
    }
  }

  void signOut() {
    this._authService.signOut();
  }
}