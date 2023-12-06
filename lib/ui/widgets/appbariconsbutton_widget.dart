import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class AppBarIconsButtonWidget extends StatelessWidget {
  const AppBarIconsButtonWidget({Key? key, required this.onTap, required this.icons,}) : super(key: key);
  final VoidCallback onTap;
  final IconData icons;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 17,
      backgroundColor: lightGreyColor.withOpacity(0.5),
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        splashColor: lightGreyColor.withOpacity(0.5),
        onTap: onTap,
        child: Icon(
          icons,
          color: greyColor.withOpacity(0.5),
        ),
      ),
    );
  }
}
