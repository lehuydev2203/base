import 'package:flutter/material.dart';

class InputUsername extends StatefulWidget {
  const InputUsername({Key? key, this.onChanged}) : super(key: key);

  /// Similarly of the [onChanged] property of the [TextFormField].
  final ValueChanged<String>? onChanged;

  @override
  State<InputUsername> createState() => _InputUserName();
}

class _InputUserName extends State<InputUsername> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: TextField(
        onChanged: widget.onChanged,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(8)),
            hintText: "User name",
            labelText: "User name",
            alignLabelWithHint: false,
            filled: true),
      ),
    );
  }
}
