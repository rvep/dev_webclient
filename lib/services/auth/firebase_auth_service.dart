// Copyright (c) 2016, borysn. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library dev_webclient.lib.services.auth.firebase_auth_service;

import 'package:angular2/core.dart';
import 'package:firebase3/firebase.dart' as firebase;

@Injectable()
class FirebaseAuthService {
  firebase.GoogleAuthProvider googleAuthProvider;

  FirebaseAuthService() {
    this.googleAuthProvider = new firebase.GoogleAuthProvider();
    this.googleAuthProvider.addScope('email profile');
  }

  void signin() {
    firebase.Auth auth = firebase.auth();
    auth.signInWithPopup(this.googleAuthProvider);
  }

  bool authDataCallback(authData) {
    if (authData) {
      print("User " + authData.uid + " logged in");
      return true;
    } else {
      return false;
    }
  }
}