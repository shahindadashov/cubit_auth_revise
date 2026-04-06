import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState());

  String email = '';
  String password = '';
  bool get isFormValid => email.isNotEmpty && password.isNotEmpty;

  bool isValidEmail(String email) {
    final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return emailRegex.hasMatch(email);
  }

  void onEmailChanged(String value) {
    if (isValidEmail(value)) {
      email = value;
    } else {
      email = '';
    }
    emit(state.copyWith(isEnabled: isFormValid));
  }

  void onPasswordChanged(String value) {
    password = value;
    emit(state.copyWith(isEnabled: isFormValid));
  }

  void onPasswordVisibilityChanged() {
    emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));
  }
}
