import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../core/errors/auth_error.dart';
import 'auth_repos.dart';

class AuthRoposImpl implements AuthRepos {
  @override
  Future<Either<AuthError, bool>> signInWithApple() async {
    // TODO: implement signInWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthError, bool>> signInWithFacebook()async {
     try {
  final LoginResult loginResult = await FacebookAuth.instance.login();
  
    final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);
  
    await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
    return const Right(true);
}  catch (e) {
  if (e is FirebaseAuthException) {
        return Left(ServerError.fromFireBaseAuthException(e));
      } else {
        return Left(ServerError(e.toString()));
      }
}
  }

  @override
  Future<Either<AuthError, bool>> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);

      return const Right(true);
    } catch (e) {
      if (e is FirebaseAuthException) {
        return Left(ServerError.fromFireBaseAuthException(e));
      } else {
        return Left(ServerError(e.toString()));
      }
    }
  }
}
