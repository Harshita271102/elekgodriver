import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'color.dart';

class SignInPhone extends StatefulWidget {
  const SignInPhone({super.key});

  @override
  State<SignInPhone> createState() => _SignInPhoneState();

}

class _SignInPhoneState extends State<SignInPhone> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          topImage(),
          bottomText(),
        ],
      ),
    );
  }

  Widget topImage() {
    return Stack(
      children: [

        Padding(
          padding: const EdgeInsets.only(
              top: 60,  bottom: 40),
          child: Center(child: Image.asset('assets/images/Group 4534330.png')),
        ),

      ],
    );
  }

  Widget bottomText() {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to Elekgo",
              style: TextStyle(
                color: background,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                height: 1.9,
                wordSpacing: 0.2,
              ),
            ),
            const Text(
              "The fastest app to book a scooter, or a bike online near you",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: mobileNumberController,
              decoration: const InputDecoration(
                labelText: 'Mobile Number',
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [LengthLimitingTextInputFormatter(10)],
              autovalidateMode: AutovalidateMode.onUserInteraction, // Enable on user interaction
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a mobile number';
                } else if (value.length < 10) {
                  return 'Mobile number must be 10 digits long';
                }
                return null; // Return null for no validation error
              },
            ),

            const SizedBox(height: 10),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
              // validator: (value) {
              //   if (value == null || value.isEmpty) {
              //     return 'Please enter an email address';
              //   }
              //   if (!RegExp(
              //       r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$")
              //       .hasMatch(value)) {
              //     return 'Invalid email format';
              //   }
              //   return null; // Return null for no validation error
              // },
            ),
            SizedBox(
              width: double.infinity,
              child: Container(
                margin: const EdgeInsets.only(top: 70),

                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const OtpPage()),
                      // );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: background,
                    padding: const EdgeInsets.only(top: 17, bottom: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Get OTP Verification',
                    style: TextStyle(
                      color: white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
