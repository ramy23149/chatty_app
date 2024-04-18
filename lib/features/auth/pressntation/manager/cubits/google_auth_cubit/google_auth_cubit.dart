import 'package:bloc/bloc.dart';
import 'package:chatty_app/features/auth/data/auth_repos/auth_repos.dart';
import 'package:meta/meta.dart';

part 'google_auth_state.dart';

class GoogleAuthCubit extends Cubit<GoogleAuthState> {
  GoogleAuthCubit(this.authRepos) : super(GoogleAuthInitial());
  final AuthRepos authRepos;

  Future<void> signInWithGoogle() async {
    emit(GoogleAuthLoading());
    var result = await authRepos.signInWithGoogle();
    result.fold(
      (err) => emit(GoogleAuthError(err.message)),
      (r) => emit(
        GoogleAuthSuccess(),
      ),
    );
  }
}
