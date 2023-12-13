import 'package:craftybay_ecommerce/ui/screens/bottom_navigationbar_screen.dart';
import 'package:craftybay_ecommerce/ui/screens/emailverification_screen.dart';
import 'package:craftybay_ecommerce/ui/screens/splash_screen.dart';
import 'package:craftybay_ecommerce/ui/utils/getxBinding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(const CraftyBay());
}

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const SplashScreen()),
        GetPage(name: '/EmailVerificationScreen', page: () => const EmailVerificationScreen()),
      ],
      initialBinding: GetxBinding(),
      debugShowCheckedModeBanner: false,
      home:  const BottomNavigationBarScreen(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
        ),
      ),
    );
  }
}

