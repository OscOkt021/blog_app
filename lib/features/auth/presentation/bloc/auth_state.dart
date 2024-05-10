part of 'auth_bloc.dart';

@immutable
sealed class AuthState {
  const AuthState();
}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthSignInSuccess extends AuthState {
  final User user;
  const AuthSignInSuccess(this.user);
}

final class AuthSignOutSuccess extends AuthState {}

final class AuthFailure extends AuthState {
  final String message;
  const AuthFailure(this.message);
}
