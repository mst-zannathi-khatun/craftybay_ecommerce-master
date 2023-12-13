import 'package:craftybay_ecommerce/ui/screens/otpverification_screen.dart';
import 'package:craftybay_ecommerce/ui/state_controller/user_auth_controller.dart';
import 'package:craftybay_ecommerce/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../widgets/elevatebutton_widget.dart';
import '../widgets/textfromfield_widget.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});
  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
 final TextEditingController _emailETController = TextEditingController();
 final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<UserAuthController>(
        builder: (authController) {
          return Padding(
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
                  TextFromFieldWidget(
                    controller: _emailETController,
                    hintText: 'Email Address',
                    validator: (String? value) {
                      if(value?.isEmpty?? true){
                        return 'Enter a valid email';
                      }
                      return null;
                    },

                  ),
                  const SizedBox(height: 8,),
                authController.emailVerificationInProgress
                    ? const CircularProgressIndicator()
                    : ElevateButtonWidget(
                        text: "Next",
                        onPressed: () async{
                          if(_formKey.currentState!.validate()){}
                          final bool response = await authController.emailVerification(_emailETController.text);
                          if(response){
                            Get.to(OTPVerificationScreen(email: _emailETController.text,));
                          } else{
                           if(mounted){
                             ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Email Verification Faile , Try Again"),),);
                           }
                          }
                        },
                      ),
                const SizedBox(height: 16,),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
