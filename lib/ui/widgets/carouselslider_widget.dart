import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class CarouselSliderWidget extends StatelessWidget {
  //final CarouselSliderModel carouselSliderModel;
  CarouselController carouselController = CarouselController();
  ValueNotifier<int> valueNotifier = ValueNotifier(0);

  CarouselSliderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: carouselController,
          options: CarouselOptions(
            onPageChanged: (index, _) {
              valueNotifier.value = index;
            },
            height: 180,
            // aspectRatio: MediaQuery.of(context).size.width,
            viewportFraction: 1.0,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 8),
          ),
          items: [1, 2, 3, 4].map((slider) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text('text $slider',
                      style: const TextStyle(fontSize: 16.0)),
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 8),
        ValueListenableBuilder(
          valueListenable: valueNotifier,
          builder: (context, currentValue, _) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // for (int i = 0; i < (carouselSliderModel.sliders?.length ?? 0); i++)
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      // color: currentValue == i ? greyColor : null,
                      border: Border.all(
                        color: greyColor.withOpacity(0.5),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}