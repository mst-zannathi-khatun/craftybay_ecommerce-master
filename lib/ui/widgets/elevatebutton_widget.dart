import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class ElevateButtonWidget extends StatelessWidget {
  const ElevateButtonWidget({
    Key? key, required this.text, required this.onPressed,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
        child: Text(text, style: const TextStyle(letterSpacing: 4),),
      ),
    );
  }
}
