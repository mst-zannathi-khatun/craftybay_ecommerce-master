import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_colors.dart';
import '../widgets/stepperbutton_widget.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});
  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        elevation: 0.2,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset("assets/images/shoes.svg", height: 80, width: 80,),
                  Column(
                    children: [
                      const Text("New Year Special Shoe"),
                      Row(
                        children: const [
                          Text("Color"),
                          Text("Sizex"),
                        ],
                      ),
                    ],
                  ),
                  const Icon(Icons.delete),
                ],
              ),
              const SizedBox(height: 2,),
              Row(
                children: [
                  const Text("\$100", style: TextStyle(color: primaryColor),),
                  const Spacer(),
                  StepperButtonWidget(
                    iconData: Icons.minimize_rounded,
                    onPressed: (){},
                  ),
                  const SizedBox(width: 8,),
                  Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                        color: lightGreyColor,
                        borderRadius: BorderRadius.circular(3)
                    ),
                    child: const Text("01", style: TextStyle( fontSize: 15),),
                  ),
                  const SizedBox(width: 8,),
                  StepperButtonWidget(
                    iconData: Icons.add,
                    onPressed: (){},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
