import 'package:flutter/material.dart';

import 'color.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 60,  bottom: 40),
              child: Center(child: Image.asset('assets/images/Group 4534330.png')),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Center(
                child: Text(
                  "Flexible Timings and Services",
                  style: TextStyle(
                    color: background,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Center(
                child: Text(
                  "Enable multiple services " ,
                  style: TextStyle(
                    color: black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

              Center(
                child: Text(
                      "and work any time of the day",
                  style: TextStyle(
                    color: black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Text(
                  "Made in India",
                  style: TextStyle(
                    color: background,
                    fontSize: 20,
                    // fontWeight: FontWeight.bold,
                  ),

                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: SizedBox(
                width: double.infinity,
                child: Container(
                  margin: const EdgeInsets.only(top: 70),

                  child: ElevatedButton(
                    onPressed: () {
                      // if (_formKey.currentState!.validate()) {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => const OtpPage()),
                      //   );
                      // }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background,
                      padding: const EdgeInsets.only(top: 17, bottom: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
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
