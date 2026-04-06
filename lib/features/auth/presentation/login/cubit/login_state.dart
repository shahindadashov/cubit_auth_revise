part of 'login_cubit.dart';

@immutable
class LoginState {
  final bool isLoading;
  final bool isEnabled;
  final bool isPasswordVisible;

  const LoginState({this.isLoading = false, this.isEnabled = false, this.isPasswordVisible = false});

  LoginState copyWith({bool? isLoading, bool? isEnabled, bool? isPasswordVisible}) {
    return LoginState(
      isLoading: isLoading ?? this.isLoading,
      isEnabled: isEnabled ?? this.isEnabled,
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
    );
  }
}
