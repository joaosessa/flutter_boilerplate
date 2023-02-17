import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final Function(String)? onChanged;
  final String? labelText;
  final String? errorText;
  final Widget? suffixIcon;
  final bool obscureText;

  const TextFieldWidget({
    required this.onChanged,
    this.labelText,
    this.errorText,
    this.suffixIcon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        errorText: errorText,
        suffixIcon: suffixIcon,
        border: const OutlineInputBorder(),
        labelStyle: const TextStyle(color: Colors.grey),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1.5,
            style: BorderStyle.solid,
          ),
        ),
      ),
    );
  }
}
