// Copyright (c) 2016, borysn. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library model.auth.auth_model;

class AuthModel {
  bool _isAuthorized;

  AuthModel () {
    this._isAuthorized = false;
  }

  bool isAuthorized() {
    return this._isAuthorized;
  }

  void setIsAuthorized(bool isAuthorized) {
    this._isAuthorized = isAuthorized;
  }
}