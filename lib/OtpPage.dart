import 'package:driver/SignInPhone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  TextEditingController otpController1 = TextEditingController();
  TextEditingController otpController2 = TextEditingController();
  TextEditingController otpController3 = TextEditingController();
  TextEditingController otpController4 = TextEditingController();

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 60, left: 62, right: 62, bottom: 40),
              child: Center(child: Image.asset('assets/images/Frame.png')),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "OTP Verification",
                style: TextStyle(
                  color: background,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Text(
                "Enter the OTP sent to your mobile number ",
                style: TextStyle(
                  color: textGree,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildOTPTextField(otpController1),
                    buildOTPTextField(otpController2),
                    buildOTPTextField(otpController3),
                    buildOTPTextField(otpController4),
                    // validator: (value) {
                    //   if (value == null || value.isEmpty) {
                    //     return 'Please enter your OTP';
                    //   }
                    //   return null; // Return null for no validation error
                    // },
                  ],

                ),
              ),
            ),
            const SizedBox(height: 28),
            const Center(
              child: Text(
                "Didn’t receive OTP code?",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: _launchURL,
                child: Text(
                  "Re-send OTP",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: textGree,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 28),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push
                      (
                      context,
                      MaterialPageRoute(builder: (context) => const SignInPhone()),
                    );                 },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: background,
                    padding: const EdgeInsets.only(top: 17, bottom: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Verify",
                    style: TextStyle(
                      color: white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildOTPTextField(TextEditingController controller) {
    return SizedBox(
      width: 50,
      child: TextFormField(
        controller: controller,
        autofocus: true,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: OutlineInputBorder(

            borderSide: BorderSide(color:background),
          ),

        ),
        keyboardType: TextInputType.number,
        onChanged: (value) {
          if (value.length == 1) {
            // Move focus to the next field
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}

void _launchURL() {
  // Implement your URL launching logic here
}

