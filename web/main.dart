// Copyright (c) 2016, borysn. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular2/platform/common.dart';
import 'package:angular2/platform/browser.dart';
import 'package:angular2/router.dart';
import 'package:polymer/polymer.dart';
import 'package:polymer_elements/iron_flex_layout_classes.dart';
import 'package:dev_webclient/rvep.dart';

main() async {
  // init polymer
  await initPolymer();

  // bootstrap
  bootstrap(Rvep, [
    ROUTER_PROVIDERS,
    provide(LocationStrategy, useClass: HashLocationStrategy)]);
}