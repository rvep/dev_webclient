// Copyright (c) 2016, borysn. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library dev_webclient.lib.services.auth.firebase_auth_service;

import 'package:angular2/core.dart';
import 'package:firebase3/firebase.dart' as firebase;

@Injectable()
class FirebaseAuthService {
  firebase.GoogleAuthProvider googleAuthProvider;

  FirebaseAuthService() {
    // init firebase
    firebase.initializeApp(
      apiKey: "AIzaSyC1aHWikGh18FBBwuVbSGuUu1lQvWCOUnY",
      authDomain: "rvep-1212.firebaseapp.com",
      databaseURL: "https://rvep-1212.firebaseio.com",
      storageBucket: "rvep-1212.appspot.com");

    // init google auth provider
    this.googleAuthProvider = new firebase.GoogleAuthProvider();
    this.googleAuthProvider.addScope('https://www.googleapis.com/auth/plus.login');
  }

  void signin() {
    firebase.auth().signInWithPopup(this.googleAuthProvider);
  }

  void signout() {
    firebase.auth().signOut();
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