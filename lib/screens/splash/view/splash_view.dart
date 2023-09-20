// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_base/router/router_name.dart';
import 'package:flutter_base/viewmodel/app/splash_viewmodel.dart';
import 'package:provider/provider.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashView();
}

class _SplashView extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    final BuildContext currentContext = context; // Lưu giữ BuildContext
    Future.delayed(
      const Duration(seconds: 2),
      () async {
        bool value =
            await Provider.of<SplashViewModel>(currentContext, listen: false)
                .checkSession();
        if (value) {
          return await Navigator.pushReplacementNamed(
              currentContext, RoutesName.MAIN);
        }
        await Navigator.pushReplacementNamed(currentContext, RoutesName.LOGIN);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: CircularProgressIndicator(),
    ));
  }
}
