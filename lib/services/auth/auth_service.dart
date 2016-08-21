// Copyright (c) 2016, borysn. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library dev_webclient.lib.services.auth.auth_service;

import 'package:angular2/core.dart';
import 'package:dev_webclient/services/auth/firebase_auth_service.dart';
import 'package:dev_webclient/model/auth/auth_model.dart';

@Injectable()
class AuthService {
  AuthModel authModel;
  FirebaseAuthService fbAuthService;

  AuthService(FirebaseAuthService this.fbAuthService) {
    // init auth model
    this.authModel = new AuthModel();
  }

  void signOut() {
    this.fbAuthService.signOut();
    this.authModel.setIsAuthorized(false);
  }

  bool isAuthorized() {
    return this.authModel.isAuthorized();
  }

}