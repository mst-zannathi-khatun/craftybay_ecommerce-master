import 'package:flutter/material.dart';
import '../style/text_style.dart';
import '../utils/app_colors.dart';

class CategoriesProductsCardWidget extends StatelessWidget {
  const CategoriesProductsCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Column(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: primaryColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(
                Icons.computer_rounded,
                size: 50,
              ),
            ),
           const SizedBox(height: 4,),
            Text(
              "Computer",
              textAlign: TextAlign.center,
              style: head4TextStyle,
            ),
          ],
        ),
      ),
    );
  }
}