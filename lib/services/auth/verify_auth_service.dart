// Copyright (c) 2016, borysn. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library dev_webclient.lib.services.auth.verify_auth_service;

import 'package:angular2/core.dart';
import 'package:dev_webclient/model/auth/verify_auth_model.dart';

@Injectable()
class VerifyAuthService {
  VerifyAuthModel _verifyAuthModel;

  VerifyAuthService() {
    this._verifyAuthModel = new VerifyAuthModel();
  }

  bool isVerified() {
    return this._verifyAuthModel.isVerified();
  }

}