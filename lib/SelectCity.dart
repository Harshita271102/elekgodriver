import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color.dart';

class SelectCity extends StatefulWidget {
  const SelectCity({super.key});

  @override
  State<SelectCity> createState() => _SelectCityState();
}

class _SelectCityState extends State<SelectCity> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,

      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/map 1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),


          Align(

            alignment: Alignment.bottomCenter,
            child: Container(

              height: MediaQuery.of(context).size.height * 0.35 ,
              width: MediaQuery.of(context).size.width,

              // height: 400,
              // width: 500,
              decoration: BoxDecoration(
                color: background,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "Which City do you want to ride?",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),


                  Container(
                    width: 360,
                    height: 55,
                    margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      style: ElevatedButton.styleFrom(
                        // ignore: deprecated_member_use
                        primary: Colors.white, // Background color of the button
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.only(top: 17, bottom: 16),
                      ),
                      child: const Row(
                        children: [
                          SizedBox(width: 30),
                          Icon(
                            CupertinoIcons.location_solid,
                            color: Colors.black,
                          ),
                          SizedBox(width: 40),
                          Text(
                            "Gandhinagar",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    width: 360,
                    height: 55,
                    margin: const EdgeInsets.only(top: 20, left: 20,right: 20),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {

                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => const CashPage()),
                          // );



                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(white),
                          padding:
                          MaterialStateProperty.all<EdgeInsetsGeometry>(
                            const EdgeInsets.only(top: 17, bottom: 16),
                          ),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        child: Text(
                          "Order now",
                          style: TextStyle(
                            color: background,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ),

        ],
      ),

    );
  }
}
