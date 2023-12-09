import 'package:craftybay_ecommerce/ui/style/text_style.dart';
import 'package:craftybay_ecommerce/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../widgets/carouselslider_widget.dart';
import '../widgets/stepperbutton_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// From Here Product Title Design Start
                  CarouselSliderWidget(),
                  const SizedBox(height: 8,),
                  Row(
                    children: [
                      Text('Happy New Year Special Deal Save 30%', style: head5TextStyle,),
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
                  const SizedBox(height: 8,),
                  /// From Here Product Review Design Start
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 25,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text('4.8'),
                      const SizedBox(
                        width: 16,
                      ),
                      const Text(
                        'Reviews',
                        style: TextStyle(color: primaryColor),
                      ),
                      const SizedBox(width: 16,),
                      Container(
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.white,
                          size: 23,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 16,),
                  /// From Here Color Design Start
                  Text('Color', style: head1TextStyle,),
                  const SizedBox(height: 8,),
                  Row(
                    children: const [
                      CircleAvatar(
                        backgroundColor: primaryColor,
                        radius: 15,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      CircleAvatar(
                        backgroundColor: primaryColor,
                        radius: 15,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      CircleAvatar(
                        backgroundColor: primaryColor,
                        radius: 15,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      CircleAvatar(
                        backgroundColor: primaryColor,
                        radius: 15,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      CircleAvatar(
                        backgroundColor: primaryColor,
                        radius: 15,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16,),
                  /// From Here Size Design Start
                  Text('Size', style: head1TextStyle,),
                  const SizedBox(height: 8,),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: lightGreyColor),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "XL",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: lightGreyColor),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "XL",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: lightGreyColor),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "XL",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: lightGreyColor),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "XL",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: lightGreyColor),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "XL",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),

                  /// From Here Descriptions Start
                  Text('Description', style: head1TextStyle,),
                  const SizedBox(height: 8,),
                  const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                      "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
                      "It has survived not only five centuries, but also the leap into electronic typesetting, "
                      "remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, "
                      "and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. "),
                ],
              ),
            ),
            const SizedBox(height: 16,),
            Expanded(
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(16),
                  ),
                  color: primaryColor.withOpacity(0.15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text("Price", style: head4TextStyle,),
                            const Text("\$100",)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 40,
                          width: 120,
                          child: ElevatedButton(onPressed: (){},
                              child: const Text("Add To Cart", style: TextStyle(color: Colors.white),),),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

