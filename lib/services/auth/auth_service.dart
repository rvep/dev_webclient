// Copyright (c) 2016, borysn. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library dev_webclient.lib.services.auth.auth_service;

import 'package:angular2/core.dart';
import 'package:dev_webclient/services/auth/firebase_auth_service.dart';

@Injectable()
class AuthService {

  FirebaseAuthService fbAuthService;

  AuthService(FirebaseAuthService this.fbAuthService) {}

  void signOut() {
    this.fbAuthService.signOut();
  }

}