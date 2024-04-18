
import 'package:dartz/dartz.dart';

import '../../../../core/errors/auth_error.dart';

abstract class AuthRepos {
  Future<Either<AuthError, bool>> signInWithGoogle();
  Future<Either<AuthError, bool>> signInWithFacebook();
  Future<Either<AuthError, bool>> signInWithApple();
}
