import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class ElevateButtonWidget extends StatelessWidget {
  const ElevateButtonWidget({
    Key? key, required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
        child: Text(text, style: const TextStyle(letterSpacing: 4),),
      ),
    );
  }
}
