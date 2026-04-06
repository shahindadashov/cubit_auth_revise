import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial()) {
    _init();
  }

  void _init() async {
    emit(SplashLoading());
    await Future.delayed(const Duration(seconds: 1));
    emit(SplashLoaded());
  }
}
