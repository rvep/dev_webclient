// Copyright (c) 2016, borysn. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library dev_webclient.lib.model.auth.firebaseAuthModel;

class FirebaseAuthModel {
  bool _isSignedIn;

  FirebaseAuthModel() {
    this._isSignedIn = false;
  }

  bool isSignedIn() {
    return this._isSignedIn;
  }

  void setIsSignedIn(bool isSignedIn) {
    this._isSignedIn = isSignedIn;
  }
}