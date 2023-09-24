import 'package:flutter/material.dart';
import 'package:flutter_base/router/router_name.dart';
import 'package:flutter_base/screens/screens.dart';
import 'package:flutter_base/viewmodel/view_models.dart';
import 'package:provider/provider.dart';

class AppNavigate extends StatelessWidget {
  const AppNavigate({super.key});

  @override
  Widget build(BuildContext context) {
    final globalModel = Provider.of<GlobalViewModel>(context);
    globalModel.checkSessionUser(context);

    return MaterialApp(initialRoute: RoutesName.DEFAULT, routes: {
      RoutesName.DEFAULT: (context) => const SplashView(),
      RoutesName.LOGIN: (context) => const LoginView(),
      RoutesName.HOME: (context) => const HomeView(),
      RoutesName.CARD: (context) => const CardView(),
      RoutesName.CARD_DETAIL: (context) => const CardDetailView(),
      RoutesName.MAIN: (context) => const Mainview(),
      RoutesName.REGISTER: (context) => const RegisterView(),
      RoutesName.PROFILE: (context) => const ProfileView(),
      RoutesName.SETTINGS: (context) => const SettingsView(),
    });
  }
}
