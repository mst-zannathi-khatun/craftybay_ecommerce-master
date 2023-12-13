import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class TextFromFieldWidget extends StatelessWidget {
  const TextFromFieldWidget({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.validator,
  }) : super(key: key);

  final String hintText;
  final TextEditingController controller;
  final Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => validator(value),
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
        ),
        hintText: hintText,
      ),
    );
  }
}