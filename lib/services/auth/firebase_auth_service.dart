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

    // setup auth change state listen
    firebase.auth().onAuthStateChanged.listen((e) {
      print('User ' + e.user.toString());
      processAuthChange(e.user);
    });
  }

  void signin() {
    firebase.auth().signInWithPopup(this.googleAuthProvider);
  }

  void signout() {
    firebase.auth().signOut();
  }

  void processAuthChange(firebase.User user) {
    if (user != null) {
      print('user authenticated');
    } else {
      print('user unauthenticated');
    }
  }
}