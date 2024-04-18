part of 'google_auth_cubit.dart';

@immutable
sealed class GoogleAuthState {}

final class GoogleAuthInitial extends GoogleAuthState {}

final class GoogleAuthLoading extends GoogleAuthState {}

final class GoogleAuthError extends GoogleAuthState {
  final String errMessage;

  GoogleAuthError(this.errMessage);
}

final class GoogleAuthSuccess extends GoogleAuthState {}
