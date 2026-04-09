import 'package:cubit_auth_revise/core/components/buttons/primary_button.dart';
import 'package:cubit_auth_revise/core/components/text-field/primary_text_field.dart';
import 'package:cubit_auth_revise/core/locator/service_locator.dart';
import 'package:cubit_auth_revise/core/storage/local_storage_service.dart';
import 'package:cubit_auth_revise/core/storage/storeage_keys.dart';
import 'package:cubit_auth_revise/core/theme/colors.dart';
import 'package:cubit_auth_revise/features/auth/presentation/login/cubit/login_cubit.dart';
import 'package:cubit_auth_revise/features/home/presentation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                color: Color(0xffEAF2FF),
                child: Icon(Icons.image, color: Colors.blueAccent, size: 36),
              ),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: BlocBuilder<LoginCubit, LoginState>(
                  builder: (context, state) {
                    final cubit = context.read<LoginCubit>();
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Welcome Back', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                        SizedBox(height: 24),
                        PrimaryTextField(
                          hintText: 'Email',
                          onChanged: (value) {
                            cubit.onEmailChanged(value);
                          },
                        ),
                        SizedBox(height: 24),
                        PrimaryTextField(
                          hintText: 'Password',
                          obscureText: !state.isPasswordVisible,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              cubit.onPasswordVisibilityChanged();
                            },
                            child: Icon(state.isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                          ),
                          onChanged: (value) {
                            cubit.onPasswordChanged(value);
                          },
                        ),
                        SizedBox(height: 24),
                        Text(
                          "Forgot Password?",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.primary),
                        ),
                        SizedBox(height: 24),
                        PrimaryButton(
                          onTap: () {
                            sl<LocalStorageService>().write(key: StorageKeys.token, value: "value");
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                          },
                          isEnabled: state.isEnabled,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
