// Copyright (c) 2016, borysn. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library dev_webclient.lib.model.auth.firebaseAuthModel;

class FirebaseAuthModel {
  bool isSignedIn;

  FirebaseAuthModel() {
    this.isSignedIn = false;
  }
}