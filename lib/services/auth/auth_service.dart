// Copyright (c) 2016, borysn. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library dev_webclient.lib.services.auth.auth_service;

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:dev_webclient/services/auth/firebase_auth_service.dart';
import 'package:dev_webclient/model/auth/auth_model.dart';

@Injectable()
class AuthService {
  Router _router;
  AuthModel _authModel;
  FirebaseAuthService _fbAuthService;

  AuthService(FirebaseAuthService this._fbAuthService, Router this._router) {
    // init auth model
    this._authModel = new AuthModel();

    // subscribe to firebase auth change stream
    this._fbAuthService.getAuthStateStream().listen((bool authState) {
      print('firebaseAuthStateChange: ' + authState.toString());
      _processAuthChange(authState);
    });
  }

  void signIn() {
    this._fbAuthService.signIn();
  }

  void signOut() {
    this._fbAuthService.signOut();
    this._authModel.setIsAuthorized(false);
  }

  bool isAuthorized() {
    return this._authModel.isAuthorized();
  }

  void _processAuthChange(bool authState) {
    if (authState) {
      this._router.navigate(['Dashboard']);
    } else {
      this._router.navigate(['Signin']);
    }
  }
}