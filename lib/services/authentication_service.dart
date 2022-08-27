import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth;

  AuthenticationService(this._firebaseAuth);

  GoogleSignInAccount? user;

  Stream<User?> get authStateChanges => _firebaseAuth.idTokenChanges();

  Future<bool> signInWithGoogle() async {
    try {
      user = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication googleAuth = await user!.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await _firebaseAuth.signInWithCredential(credential);
      return true;
    } on FirebaseAuthException catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  String getUid() {
    return _firebaseAuth.currentUser!.uid;
  }
}
