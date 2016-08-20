// Copyright (c) 2016, borysn. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library dev_webclient.lib.views.login.login;

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:polymer/polymer.dart';
import 'package:polymer_elements/paper_styles.dart';
import 'package:polymer_elements/color.dart';
import 'package:polymer_elements/typography.dart';
import 'package:polymer_elements/iron_flex_layout_classes.dart';
import 'package:polymer_elements/paper_button.dart';

@Component(
  selector: 'login',
  styleUrls: const ['login.css'],
  templateUrl: 'login.html',
  directives: const [ROUTER_DIRECTIVES])
class Login {}