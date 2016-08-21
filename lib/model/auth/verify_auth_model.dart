// Copyright (c) 2016, borysn. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library dev_webclient.lib.model.auth.verify_auth_model;

class VerifyAuthModel {
  bool _isVerified;

  VerifyAuthModel() {
    this._isVerified = false;
  }

  bool isVerified() {
    return this._isVerified;
  }

  void setIsVerified(bool isVerified) {
    this._isVerified = isVerified;
  }
}