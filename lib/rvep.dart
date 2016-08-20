// Copyright (c) 2016, borysn. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library dev_webclient.lib.rvep;

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:dev_webclient/views/login/login.dart';

@Component(
  selector: 'rvep',
  template: '<router-outlet></router-outlet>',
  directives: const [ROUTER_DIRECTIVES])
@RouteConfig(const [
  const Route(path: '/login', name: 'Lome', component: Login, useAsDefault: true),
])
class Rvep {}
