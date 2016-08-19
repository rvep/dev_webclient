// Copyright (c) 2016, borysn. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
@HtmlImport('main_app.html')
library dev_webclient.lib.main_app;

import 'dart:html';

import 'package:polymer_elements/paper_input.dart';
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart';

@PolymerRegister('main-app')
class MainApp extends PolymerElement {

  /// Constructor used to create instance of MainApp.
  MainApp.created() : super.created();

}
