// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future emailSignIn(String email, String password) async {
    UserCredential userCredential =
        await auth.signInWithEmailAndPassword(email: email, password: password);

    if (userCredential.user != null) {
      print("Sign In Success");
      print("uid = ${userCredential.user!.uid}");
    }
  }
}
