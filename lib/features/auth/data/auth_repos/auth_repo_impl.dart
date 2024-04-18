import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'auth_repos.dart';

class AuthRoposImpl implements AuthRepos {
  @override
  Future<bool> signInWithApple(String email, String password) async {
    // TODO: implement signInWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<bool> signInWithFacebook(String email, String password) {
    // TODO: implement signInWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<bool> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    await FirebaseAuth.instance.signInWithCredential(credential);
    return true;
  }
}
