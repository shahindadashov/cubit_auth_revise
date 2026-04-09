import 'package:cubit_auth_revise/core/locator/service_locator.dart';
import 'package:cubit_auth_revise/core/storage/local_storage_service.dart';
import 'package:cubit_auth_revise/core/storage/storeage_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial()) {
    _init();
  }

  void _init() async {
    emit(SplashLoading());
    String? token = sl<LocalStorageService>().read(key: StorageKeys.token);
    if (token != null) {
      await Future.delayed(const Duration(seconds: 1));
      emit(NavigateToHome());
    } else {
      await Future.delayed(const Duration(seconds: 1));
      emit(NavigateToLogin());
    }
  }
}
