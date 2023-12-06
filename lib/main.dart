import 'package:craftybay_ecommerce/ui/screens/home_screen.dart';
import 'package:craftybay_ecommerce/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const CraftyBay());
}

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
        ),
      ),
    );
  }
}
