import 'package:cubit_auth_revise/app/app.dart';
import 'package:cubit_auth_revise/core/locator/service_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  await registerServices();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(CubitRevise());
}
