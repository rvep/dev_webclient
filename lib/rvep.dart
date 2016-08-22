// Copyright (c) 2016, borysn. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library rvep;

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:dev_webclient/views/signin/signin.dart';
import 'package:dev_webclient/views/dashboard/dashboard.dart';

@Component(
  selector: 'rvep',
  template: '<router-outlet></router-outlet>',
  directives: const [ROUTER_DIRECTIVES])
@RouteConfig(const [
  const Route(path: '/signin', name: 'Signin', component: Signin, useAsDefault: true),
  const Route(path: '/dashboard', name: 'Dashboard', component: Dashboard)
])
class Rvep {}
