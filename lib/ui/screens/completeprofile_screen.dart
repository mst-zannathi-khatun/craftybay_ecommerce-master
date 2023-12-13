import 'package:craftybay_ecommerce/ui/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/elevatebutton_widget.dart';
import '../widgets/textfromfield_widget.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});
  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            SvgPicture.asset('assets/images/logo.svg', height: 100, width: 100,),
            const SizedBox(height: 15,),
            Text("Complete Profile", style: head1TextStyle,),
            Text("Get started with us with your details", style: head4TextStyle,),
            // const SizedBox(height: 16,),
            // const TextFromFieldWidget(
            //   hintText: "First Name",
            // ),
            // const SizedBox(height: 8,),
            // const TextFromFieldWidget(
            //   hintText: "Last Name",
            // ),
            // const SizedBox(height: 8,),
            // const TextFromFieldWidget(
            //   hintText: "Mobile",
            // ),
            // const SizedBox(height: 8,),
            // const TextFromFieldWidget(
            //   hintText: "City",
            // ),
            // const SizedBox(height: 8,),
            // const TextFromFieldWidget(
            //   hintText: "Shipping Address",
            // ),
            // const SizedBox(height: 16,),
            // const ElevateButtonWidget(
            //   text: "Complete",
            // ),
          ],
        ),
      ),
    );
  }
}



