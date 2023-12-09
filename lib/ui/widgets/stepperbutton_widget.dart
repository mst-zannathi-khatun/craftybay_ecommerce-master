import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class StepperButtonWidget extends StatelessWidget {
  const StepperButtonWidget({
    Key? key, required this.iconData, required this.onPressed,
  }) : super(key: key);
  final IconData iconData;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 22,
        width: 22,
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(3)
        ),
        child: Icon(iconData, color: Colors.white, size: 15,),
      ),
    );
  }
}
