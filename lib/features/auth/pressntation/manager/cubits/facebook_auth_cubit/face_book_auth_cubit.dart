import 'package:bloc/bloc.dart';
import 'package:chatty_app/features/auth/data/auth_repos/auth_repos.dart';
import 'package:meta/meta.dart';

part 'face_book_auth_state.dart';

class FaceBookAuthCubit extends Cubit<FaceBookAuthState> {
  FaceBookAuthCubit(this.authRepos) : super(FaceBookAuthInitial());
  final AuthRepos authRepos;

  Future<void> signInWithFacebook() async {
    emit(FaceBookAuthLoading());
    var result = await authRepos.signInWithFacebook();
    result.fold(
        (err) => emit(FaceBookAuthError(err.message)),
        (r) => emit(
              FaceBookAuthSuccess(),
            ));
  }
}
