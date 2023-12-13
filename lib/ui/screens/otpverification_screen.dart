import 'package:craftybay_ecommerce/ui/screens/home_screen.dart';
import 'package:craftybay_ecommerce/ui/state_controller/user_auth_controller.dart';
import 'package:craftybay_ecommerce/ui/style/text_style.dart';
import 'package:craftybay_ecommerce/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../widgets/elevatebutton_widget.dart';

class OTPVerificationScreen extends StatefulWidget {
  final String email;

  const OTPVerificationScreen({super.key, required this.email});

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  final TextEditingController _otpETController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<UserAuthController>(builder: (userAuthController) {
        return Padding(
          padding: const EdgeInsets.all(5),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/logo.svg',
                  height: 100,
                  width: 100,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text("Enter OTP Code"),
                const SizedBox(
                  height: 4,
                ),
                const Text("A 4 digit OTP code has been sent"),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: PinCodeTextField(
                    controller: _otpETController,
                    validator: (String? value) {
                      if (value?.isEmpty ?? true) {
                        return 'Enter Your Valid OTP';
                      }
                      return null;
                    },
                    length: 4,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 40,
                      fieldWidth: 40,
                      activeFillColor: Colors.white,
                      selectedColor: primaryColor,
                      activeColor: primaryColor,
                      inactiveColor: primaryColor,
                    ),
                    animationDuration: Duration(milliseconds: 300),
                    onCompleted: (v) {
                      print("Completed");
                    },
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        //  currentText = value;
                      });
                    },
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      return true;
                    },
                    appContext: context,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                userAuthController.otpVerificationInProgress
                    ? const CircularProgressIndicator()
                    : ElevateButtonWidget(
                        text: "Next",
                        onPressed: () async {
                          final bool response =
                              await userAuthController.OTPVerification(
                                  widget.email, _otpETController.text);
                          if (response) {
                            Get.to(const HomeScreen());
                          } else {
                            Get.showSnackbar(const GetSnackBar(
                              title: 'otp verification failed',
                              message: 'Check your once again before enter it',
                              duration: Duration(seconds: 3),
                            ));
                          }
                        },
                      ),
                const SizedBox(
                  height: 16,
                ),
                RichText(
                  text: const TextSpan(
                    text: "This code will be expire in",
                    style: TextStyle(
                      fontSize: 13,
                      color: greyColor,
                    ),
                    children: [
                      TextSpan(
                        text: '120s',
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Resend Code",
                    style: head4TextStyle,
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
