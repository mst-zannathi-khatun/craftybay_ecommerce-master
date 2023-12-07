import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../style/text_style.dart';
import '../utils/app_colors.dart';

class SpecialProductsCardWidget extends StatelessWidget {
  const SpecialProductsCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: InkWell(
        onTap: () {},
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          shadowColor: primaryColor.withOpacity(0.5),
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/images/shoes.svg',
                height: 100,
                width: 110,
                fit: BoxFit.scaleDown,
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  'New Year Special Shoe 30',
                  style: head5TextStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Row(
                  children: [
                    const Text(
                      '\$100',
                      style: TextStyle(color: primaryColor),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 22,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Text('4.8'),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
