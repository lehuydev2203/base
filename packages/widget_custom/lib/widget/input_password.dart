import 'package:flutter/material.dart';

class InputPassword extends StatefulWidget {
  const InputPassword({
    Key? key,
    this.onChanged,
  }) : super(key: key);

  /// Similarly of the [onChanged] property of the [TextFormField].
  final ValueChanged<String>? onChanged;

  @override
  State<InputPassword> createState() => _InputPassword();
}

class _InputPassword extends State<InputPassword> {
  bool _isShow = false;

  @override
  void initState() {
    super.initState();
    _isShow = false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: TextField(
        obscureText: _isShow,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: "Password",
          labelText: "Password",
          labelStyle: const TextStyle(color: Colors.black),
          suffixIcon: IconButton(
            icon: Icon(_isShow ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              setState(
                () {
                  _isShow = !_isShow;
                },
              );
            },
          ),
          alignLabelWithHint: false,
          filled: true,
        ),
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.done,
      ),
    );
  }
}
