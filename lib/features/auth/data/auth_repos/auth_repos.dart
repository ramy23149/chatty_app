
abstract class AuthRepos {
  Future<bool> signInWithGoogle();
  Future<bool> signInWithFacebook(String email, String password);
  Future<bool> signInWithApple(String email, String password);
}
