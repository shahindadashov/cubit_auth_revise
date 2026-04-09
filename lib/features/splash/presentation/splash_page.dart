import 'package:cubit_auth_revise/features/auth/presentation/login/login_page.dart';
import 'package:cubit_auth_revise/features/home/presentation/home_page.dart';
import 'package:cubit_auth_revise/features/splash/presentation/cubit/splash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit(),
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: BlocListener<SplashCubit, SplashState>(
          listener: (context, state) {
            if (state is NavigateToLogin) {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
            }
            if (state is NavigateToHome) {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
            }
          },
          child: Center(child: Text('Splash Page')),
        ),
      ),
    );
  }
}
