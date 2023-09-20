import 'package:flutter/material.dart';
import 'package:flutter_base/viewmodel/view_models.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settingsModel = Provider.of<SettingViewModel>(context);
    return ListView(
      children: <Widget>[
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text("Logout"),
          onTap: () => settingsModel.logout(context),
        ),
      ],
    );
  }
}
