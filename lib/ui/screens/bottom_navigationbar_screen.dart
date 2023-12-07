import 'package:craftybay_ecommerce/ui/screens/cart_screen.dart';
import 'package:craftybay_ecommerce/ui/screens/categories_screen.dart';
import 'package:craftybay_ecommerce/ui/screens/home_screen.dart';
import 'package:craftybay_ecommerce/ui/screens/wish_screen.dart';
import 'package:craftybay_ecommerce/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int selectedIndex = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const CategoriesScreen(),
    const CartScreen(),
    const WishScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        currentIndex: selectedIndex,
        elevation: 4,
        unselectedItemColor: greyColor,
        selectedItemColor: primaryColor,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined), label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart_outlined), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard_outlined), label: 'Wish'),
        ],
      ),
      body: screens[selectedIndex],
    );
  }
}
