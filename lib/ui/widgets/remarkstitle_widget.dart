import 'package:flutter/material.dart';

import '../style/text_style.dart';

class RemarksTitleWidget extends StatelessWidget {
  const RemarksTitleWidget({
    Key? key,
    required this.headText,
    required this.titleText,
  }) : super(key: key);
  final String headText, titleText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          headText,
          style: head1TextStyle,
        ),
        const Spacer(),
        Text(
          titleText,
          style: head6TextStyle,
        ),
      ],
    );
  }
}