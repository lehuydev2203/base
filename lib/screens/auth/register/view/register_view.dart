import 'package:flutter/material.dart';
import 'package:flutter_base/viewmodel/view_models.dart';
import 'package:widget_custom/widget/widgets.dart';
import 'package:provider/provider.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final registerModel = Provider.of<RegisterViewModel>(context);

    return Column(
      children: [
        const Text("Register"),
        InputUsername(
          onChanged: (value) => registerModel.setEmail(value),
        ),
        InputPassword(
          onChanged: (value) => registerModel.setPassword(value),
        ),
        ButtonSubmit(onPressed: () => registerModel.submit())
      ],
    );
  }
}
