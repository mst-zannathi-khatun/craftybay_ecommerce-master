import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/appbariconsbutton_widget.dart';
import '../widgets/carouselslider_widget.dart';
import '../widgets/categoriesproductscard_widget.dart';
import '../widgets/newproductscard_widget.dart';
import '../widgets/popularproductscard_widget.dart';
import '../widgets/remarkstitle_widget.dart';
import '../widgets/searchtextfield_widget.dart';
import '../widgets/specialproductscard_widget.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SvgPicture.asset('assets/images/appbar_logo.svg'),
            const Spacer(),

            /// From Here AppBar Icons Design Started
            AppBarIconsButtonWidget(
              onTap: () {},
              icons: Icons.person_outline,
            ),
            const SizedBox(
              width: 5,
            ),
            AppBarIconsButtonWidget(
              onTap: () {},
              icons: Icons.call_outlined,
            ),
            const SizedBox(
              width: 5,
            ),
            AppBarIconsButtonWidget(
              onTap: () {},
              icons: Icons.notifications_active_outlined,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// From Here Search Text FromFiled Design Started
              const SearchTextFieldWidget(),

              /// From Here Slider Design Started
              const SizedBox(
                height: 8,
              ),
              CarouselSliderWidget(),
              const SizedBox(
                height: 8,
              ),

              /// From Here All Category Designed Started
              const RemarksTitleWidget(
                headText: 'All Categories',
                titleText: 'See All',
              ),
              const SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    CategoriesProductsCardWidget(),
                    CategoriesProductsCardWidget(),
                    CategoriesProductsCardWidget(),
                    CategoriesProductsCardWidget(),
                    CategoriesProductsCardWidget(),
                  ],
                ),
              ),

              /// From Here All Popular Product Designed
              const SizedBox(
                height: 8,
              ),
              const RemarksTitleWidget(
                headText: 'Popular',
                titleText: 'See All',
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    PopularProductsCardWidget(),
                    PopularProductsCardWidget(),
                    PopularProductsCardWidget(),
                    PopularProductsCardWidget(),
                  ],
                ),
              ),

              /// From Here All Special Product Designed
              const SizedBox(
                height: 8,
              ),
              const RemarksTitleWidget(
                headText: 'Special',
                titleText: 'See All',
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    SpecialProductsCardWidget(),
                    SpecialProductsCardWidget(),
                    SpecialProductsCardWidget(),
                    SpecialProductsCardWidget(),
                    SpecialProductsCardWidget(),
                  ],
                ),
              ),

              /// From Here All New Product Designed
              const SizedBox(
                height: 8,
              ),
              const RemarksTitleWidget(
                headText: 'New',
                titleText: 'See All',
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    NewProductsCardWidget(),
                    NewProductsCardWidget(),
                    NewProductsCardWidget(),
                    NewProductsCardWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
