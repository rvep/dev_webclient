// Copyright (c) 2016, borysn. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library dev_webclient.lib.views.signin;

import 'package:angular2/core.dart';
import 'package:angular2/common.dart';
import 'package:angular2/router.dart';
import 'package:polymer_elements/paper_button.dart';

@Component(
  selector: 'signin',
  styleUrls: const ['signin.css'],
  templateUrl: 'signin.html',
  directives: const [ROUTER_DIRECTIVES, CORE_DIRECTIVES])
class Signin {

  Router router;

  Signin(Router this.router) {}

  void signin() {
    this.router.navigate(['Dashboard']);
  }
}