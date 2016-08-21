// Copyright (c) 2016, borysn. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library dev_webclient.lib.services.auth.firebase_auth_service;

import 'dart:async';
import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:firebase3/firebase.dart' as firebase;
import 'package:dev_webclient/model/auth/firebase_auth_model.dart';

@Injectable()
class FirebaseAuthService {
  Router _router;
  Stream<bool> _authState;
  StreamController _authStateController;
  FirebaseAuthModel _fbAuthModel;
  firebase.GoogleAuthProvider _googleAuthProvider;

  FirebaseAuthService(Router this._router) {
    // init auth state stream
    this._authStateController = new StreamController();
    this._authState = this._authStateController.stream;

    // init firebase auth model model
    this._fbAuthModel = new FirebaseAuthModel();

    // init firebase
    firebase.initializeApp(
      apiKey: "AIzaSyC1aHWikGh18FBBwuVbSGuUu1lQvWCOUnY",
      authDomain: "rvep-1212.firebaseapp.com",
      databaseURL: "https://rvep-1212.firebaseio.com",
      storageBucket: "rvep-1212.appspot.com");

    // init google auth provider
    this._googleAuthProvider = new firebase.GoogleAuthProvider();
    this._googleAuthProvider.addScope('https://www.googleapis.com/auth/plus.login');

    // setup auth change state listen
    firebase.auth().onAuthStateChanged.listen((e) {
      _processAuthChange(e.user);
    });
  }

  void signIn() {
    firebase.auth().signInWithPopup(this._googleAuthProvider);
  }

  void signOut() {
    firebase.auth().signOut();
  }

  bool isSignedIn() {
    return this._fbAuthModel.isSignedIn();
  }

  Stream<bool> getAuthStateStream() {
    return this._authState;
  }

  void _processAuthChange(firebase.User user) {
    if (user != null) {
      print('user authenticated');
      this._fbAuthModel.setIsSignedIn(true);
      this._authStateController.add(true);
      this._router.navigate(['Dashboard']);
    } else {
      print('user unauthenticated');
      this._authStateController.add(false);
      this._fbAuthModel.setIsSignedIn(false);
      this._router.navigate(['Signin']);
    }
  }
}