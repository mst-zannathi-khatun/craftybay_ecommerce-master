import 'package:flutter/material.dart';
import '../style/text_style.dart';
import '../utils/app_colors.dart';

class CategoriesProductsCardWidget extends StatelessWidget {
  const CategoriesProductsCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              height: 80,
              width: 80,
              child: Icon(
                Icons.computer_rounded,
                size: 50,
              ),
              decoration: BoxDecoration(
                color: primaryColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "Computer",
            style: head4TextStyle,
          ),
        ],
      ),
    );
  }
}