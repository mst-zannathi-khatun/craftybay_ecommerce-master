import 'package:craftybay_ecommerce/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/elevatebutton_widget.dart';
import '../widgets/textfromfield_widget.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});
  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/logo.svg', height: 100, width: 100,),
              const SizedBox(height: 16,),
              const Text("Welcome Back", style: TextStyle(letterSpacing: 0.5, fontSize: 30, color: blackColor),),
              const SizedBox(height: 4,),
              const Text("Please Enter Your Email Address", style: TextStyle(fontSize: 14, color: blackColor),),
              const SizedBox(height: 16,),
              const TextFromFieldWidget(
                hintText: 'Email Address',
              ),
              const SizedBox(height: 8,),
              const ElevateButtonWidget(text: "Next",),
              const SizedBox(height: 16,),
            ],
          ),
        ),
      ),
    );
  }
}
