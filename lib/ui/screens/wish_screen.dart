import 'package:flutter/material.dart';

import '../widgets/popularproductscard_widget.dart';

class WishScreen extends StatelessWidget {
  const WishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: 20,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.65,
          ),
          itemBuilder: (context, value) {
            return const PopularProductsCardWidget();
          },
        ),
      ),
    );
  }
}
