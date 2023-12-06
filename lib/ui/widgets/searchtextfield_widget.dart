import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class SearchTextFieldWidget extends StatelessWidget {
  const SearchTextFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.search,
      onSubmitted: (value) {},
      decoration: InputDecoration(
        hintText: 'Search',
        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        filled: true,
        prefixIconColor: greyColor.withOpacity(0.5),
        prefix: Icon(
          Icons.search,
          color: greyColor.withOpacity(0.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

