import 'package:flutter/material.dart';
import 'package:flutter_base/router/router_name.dart';
import 'package:flutter_base/viewmodel/view_models.dart';
import 'package:provider/provider.dart';
import 'package:utils/utils/fonts.dart';
import 'package:widget_custom/widget/widgets.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  void submit(context) {
    Navigator.of(context).pushNamed(RoutesName.MAIN);
  }

  @override
  Widget build(BuildContext context) {
    final loginModel = Provider.of<LoginViewModel>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              " Welcome to flutter ",
              style: TextStyle(
                  fontFamily: Fonts.FAMILY_INTER, fontSize: Fonts.SIZE_H1),
            ),
            InputUsername(
              onChanged: (value) => loginModel.setAccount(value),
            ),
            InputPassword(
              onChanged: (value) => loginModel.setPassword(value),
            ),
            ButtonSubmit(onPressed: () => loginModel.submit(context))
          ],
        ),
      ),
    );
  }
}
