part of 'face_book_auth_cubit.dart';

@immutable
sealed class FaceBookAuthState {}

final class FaceBookAuthInitial extends FaceBookAuthState {}

final class FaceBookAuthLoading extends FaceBookAuthState {}

final class FaceBookAuthError extends FaceBookAuthState {
  final String errMessage;

  FaceBookAuthError(this.errMessage);
}

final class FaceBookAuthSuccess extends FaceBookAuthState {}
