import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'color.dart';

class KYCVerification extends StatefulWidget {
  const KYCVerification({super.key});

  @override
  State<KYCVerification> createState() => _KYCVerificationState();
}

class _KYCVerificationState extends State<KYCVerification> {

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
              child: Center(child: Image.asset('assets/images/WhatsApp Image 2023-10-28 at 4.03.04 PM.jpeg')),
            ),

            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Text(
                "KYC Verification",
                style: TextStyle(
                  color: black,
                  fontSize: 14,

                  fontWeight: FontWeight.bold,

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Text(
                "-  Click the below icon to take a selfie",
                style: TextStyle(
                  color: textGree,
                  fontSize: 14,

                  // fontWeight: FontWeight.bold,

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Text(
                "-  Please make sure your photo is clear",
                style: TextStyle(
                  color: textGree,
                  fontSize: 14,

                  // fontWeight: FontWeight.bold,

                ),
              ),
            ),

            Center(
              child: Container(
                height: 135,
                width: 204,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: background, // Change to your desired border color
                    width: 1.0,
                  ),
                ),

                child: Center(
                  child: Text(
                    'Upload Your Image',
                    style: TextStyle(
                      color: gree, // Use your color or replace with the actual color
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),


              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: Container(
                      color: litegrey, // Set the background color to green
                      child: TextField(
                        decoration: const InputDecoration(
                          labelText: 'Enter Your Aadhar Number',
                          prefixIcon: Icon(Icons.add_card),
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [LengthLimitingTextInputFormatter(10)],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Center(
              child: Container(
                height: 75,
                width: 220,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: background, // Change to your desired border color
                    width: 1.0,
                  ),
                ),

                child: Center(
                  child: Text(
                    'Upload Aadhar Front Image',
                    style: TextStyle(
                      color: gree, // Use your color or replace with the actual color
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),


              ),
            ),
            Center(
              child: Container(
                height: 75,
                width: 220,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: background, // Change to your desired border color
                    width: 1.0,
                  ),
                ),

                child: Center(
                  child: Text(
                    'Upload Aadhar Back Image',
                    style: TextStyle(
                      color: gree, // Use your color or replace with the actual color
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),


              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: Container(
                      color: white, // Set the background color to green
                      child: TextField(
                        decoration: const InputDecoration(
                          labelText: 'Enter Your LC',
                          prefixIcon: Icon(Icons.add_card),
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [LengthLimitingTextInputFormatter(10)],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Center(
              child: Container(
                height: 75,
                width: 220,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: background, // Change to your desired border color
                    width: 1.0,
                  ),
                ),

                child: Center(
                  child: Text(
                    'Upload Your Image Driving Licence',
                    style: TextStyle(
                      color: gree, // Use your color or replace with the actual color
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                ),


              ),
            ),

            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: Container(
                      color: white, // Set the background color to green
                      child: TextField(
                        decoration: const InputDecoration(
                          labelText: 'Enter Your RC',
                          prefixIcon: Icon(Icons.add_card),
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [LengthLimitingTextInputFormatter(10)],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Center(
              child: Container(
                height: 75,
                width: 220,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: background, // Change to your desired border color
                    width: 1.0,
                  ),
                ),

                child: Center(
                  child: Text(
                    'Upload Rc Front Image',
                    style: TextStyle(
                      color: gree, // Use your color or replace with the actual color
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),


              ),
            ),
            Center(
              child: Container(
                height: 75,
                width: 220,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: background, // Change to your desired border color
                    width: 1.0,
                  ),
                ),

                child: Center(
                  child: Text(
                    'Upload Rc Back Image',
                    style: TextStyle(
                      color: gree, // Use your color or replace with the actual color
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),


              ),
            ),

            Center(
              child: Container(
                height: 135,
                width: 204,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: background, // Change to your desired border color
                    width: 1.0,
                  ),
                ),

                child: Center(
                  child: Text(
                    'Upload Your Image  Fitness cercertification ',
                    style: TextStyle(
                      color: gree, // Use your color or replace with the actual color
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),


              ),
            ),

            Center(
              child: Container(
                height: 135,
                width: 204,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: background, // Change to your desired border color
                    width: 1.0,
                  ),
                ),

                child: Center(
                  child: Text(
                    'Upload Your Image insurance policy',
                    style: TextStyle(
                      color: gree, // Use your color or replace with the actual color
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),


              ),
            ),

            Center(
              child: Container(
                height: 135,
                width: 204,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: background, // Change to your desired border color
                    width: 1.0,
                  ),
                ),

                child: Center(
                  child: Text(
                    'Upload Your Image PUC',
                    style: TextStyle(
                      color: gree, // Use your color or replace with the actual color
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),


              ),
            ),


            Container(
              margin: const EdgeInsets.only(left: 20, right: 20,top: 30),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Aadhar_otp_page()),
                    // );
                  },
                  child: const Text(
                    "vehicle",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: background, // You should define 'background'
                    padding: const EdgeInsets.only(top: 17, bottom: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
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
