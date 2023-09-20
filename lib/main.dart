import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/models.dart';
import 'router/router_view.dart';
import 'viewmodel/view_models.dart';

// final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
          create: (context) => GlobalViewModel(GlobalModel())),
      ChangeNotifierProvider(create: (context) => HomeViewModel(HomeModel())),
      ChangeNotifierProvider(
          create: (context) => RegisterViewModel(RegisterModel())),
      ChangeNotifierProvider(create: (context) => LoginViewModel(LoginModel())),
      ChangeNotifierProvider(
          create: (context) => SettingViewModel(SettingModel())),
      ChangeNotifierProvider(
          create: (context) => SplashViewModel(SplashModel())),
    ], child: const AppNavigate());
  }
}
