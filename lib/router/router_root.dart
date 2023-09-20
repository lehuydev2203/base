import 'package:flutter/material.dart';
import 'package:flutter_base/router/router_name.dart';
import 'package:flutter_base/screens/screens.dart';

class AppNavigate extends StatefulWidget {
  const AppNavigate({super.key});

  @override
  State<AppNavigate> createState() => _AppNavigate();
}

class _AppNavigate extends State<AppNavigate> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: RoutesName.DEFAULT, routes: {
      RoutesName.DEFAULT: (context) => const SplashView(),
      RoutesName.LOGIN: (context) => const LoginView(),
      RoutesName.HOME: (context) => const HomeView(),
      RoutesName.MAIN: (context) => const Mainview(),
      RoutesName.REGISTER: (context) => const RegisterView(),
      RoutesName.PROFILE: (context) => const ProfileView(),
      RoutesName.SETTINGS: (context) => const SettingsView(),
    });
  }
}
