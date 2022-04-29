import 'package:flutter/material.dart';
import 'package:frontend/constants/theme_helper.dart';

class TextfieldDeco extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  const TextfieldDeco({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: ThemeHelper().textInputDecoration(labelText, hintText),
    );
  }
}
