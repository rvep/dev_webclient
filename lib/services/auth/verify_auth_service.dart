// Copyright (c) 2016, borysn. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library services.auth.verify_auth_service;

import 'dart:async';
import 'package:angular2/core.dart';
import 'package:dev_webclient/model/auth/verify_auth_model.dart';
import 'package:dev_appserver/server/authverifyapi.dart';

@Injectable()
class VerifyAuthService {
  Stream<VerifyAuthModel> _verifyState;
  StreamController _verifyStateController;

  VerifyAuthModel _verifyAuthModel;

  VerifyAuthService() {
    this._verifyAuthModel = new VerifyAuthModel();
  }

  bool isVerified() {
    return this._verifyAuthModel.isVerified();
  }

  void verifyAuthToken(AuthVerifyRequest request) {

  }

}
