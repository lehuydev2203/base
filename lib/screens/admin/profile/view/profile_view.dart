import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        // automaticallyImplyLeading: false,
      ),
      body: const Center(
          child: Column(
        children: <Widget>[Text("Profile")],
      )),
    ));
  }
}
