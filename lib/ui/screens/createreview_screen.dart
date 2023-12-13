import 'package:flutter/material.dart';

import '../widgets/elevatebutton_widget.dart';
import '../widgets/textfromfield_widget.dart';

class CreateReviewScreen extends StatefulWidget {
  const CreateReviewScreen({super.key});

  @override
  State<CreateReviewScreen> createState() => _CreateReviewScreenState();
}

class _CreateReviewScreenState extends State<CreateReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // TextFromFieldWidget(
            //   hintText: "First Name",
            // ),
            // SizedBox(height: 8,),
            // TextFromFieldWidget(
            //   hintText: "Last Name",
            // ),
            // SizedBox(height: 8,),
            // TextFromFieldWidget(
            //   hintText: "Write Review",
            // ),
            // SizedBox(height: 16,),
            // ElevateButtonWidget(text: 'Submit',),
          ],
        ),
      ),
    );
  }
}
