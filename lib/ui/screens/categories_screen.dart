import 'package:flutter/material.dart';

import '../widgets/categoriesproductscard_widget.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: 20,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, childAspectRatio: 0.82),
          itemBuilder: (context, value) {
            return const CategoriesProductsCardWidget();
          },
        ),
      ),
    );
  }
}
