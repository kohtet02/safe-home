import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

class AuthService {
  // Check already login
  Future<bool> isLoggedIn() async {
    final firebaseAuth = FirebaseAuth.instance;
    var _authResult = false;
    try {
      final FirebaseUser user = await firebaseAuth.currentUser();
      if (user != null) {
        _authResult = true;
      }
    } catch (e) {
      print(e);
      return false;
    }
    return _authResult;
  }

  // Login
  Future<bool> login(String type) async {
    var _authResult = false;
    _handleSignIn(type).then((result) {
      if (result == 1) {
        _authResult = true;
      }
    });
    return _authResult;
  }

  // Logout
  Future<void> logout() async {
    final firebaseAuth = FirebaseAuth.instance;
    firebaseAuth.signOut();
  }

  Future<int> _handleSignIn(String type) async {
    var firebaseAuth = FirebaseAuth.instance;
    switch (type) {
      case 'FB':
        FacebookLoginResult facebookLoginResult = await _handleFBSignIn();
        final accessToken = facebookLoginResult.accessToken.token;
        if (facebookLoginResult.status == FacebookLoginStatus.loggedIn) {
          final facebookAuthCred =
              FacebookAuthProvider.getCredential(accessToken: accessToken);
          print(facebookAuthCred);
          final authResult =
              await firebaseAuth.signInWithCredential(facebookAuthCred);
          print('User : ' + authResult.user.displayName);
          return 1;
        } else {
          return 0;
        }
        break;
      default:
        return 0;
        break;
    }
  }

  Future<FacebookLoginResult> _handleFBSignIn() async {
    FacebookLogin fbLogin = FacebookLogin();
    FacebookLoginResult fbLoginResult = await fbLogin.logIn(['email']);
    switch (fbLoginResult.status) {
      case FacebookLoginStatus.cancelledByUser:
        print('Login Cancelled.');
        break;
      case FacebookLoginStatus.error:
        print('Error Occured.');
        break;
      case FacebookLoginStatus.loggedIn:
        print('Logged In Successful.');
        break;
    }
    return fbLoginResult;
  }
}
