// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({super.key});

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
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

              height: MediaQuery.of(context).size.height * 0.40 ,
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
              // child: Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     const Text(
              //       "Welcome to your dashboard",
              //       style: TextStyle(
              //         fontSize: 18,
              //         color: Colors.white,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //     const Padding(
              //       padding: EdgeInsets.only(top: 20),
              //       child: Text(
              //         "Yayy! We have found the nearest Elekgo  ",
              //         style: TextStyle(
              //           fontSize: 12,
              //           color: Colors.white,
              //           // fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //     ),
              //     const Text(
              //       " for you. Select your exclusive Elekgo and ",
              //       style: TextStyle(
              //         fontSize: 12,
              //         color: Colors.white,
              //         // fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //     const Text(
              //       " enjoy a great ride. Enjoy!",
              //       style: TextStyle(
              //         fontSize: 12,
              //         color: Colors.white,
              //         // fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //     Row(
              //       children: [
              //         Expanded(
              //           child: Container(
              //             height: 55,
              //             width: 133,
              //             margin: const EdgeInsets.only(
              //                 left: 20, right: 20, top: 25),
              //             child: ElevatedButton(
              //               onPressed: () {
              //                 // Navigator.push(
              //                 //   context,
              //                 //   MaterialPageRoute(builder: (context) => Profile_page()
              //                 //   ),
              //                 // );
              //               },
              //               style: ElevatedButton.styleFrom(
              //                 backgroundColor: white,
              //                 padding: const EdgeInsets.only(top: 17, bottom: 16),
              //                 shape: RoundedRectangleBorder(
              //                   borderRadius: BorderRadius.circular(10),
              //                 ),
              //               ),
              //               child: Text(
              //                 "No,Thanks",
              //                 style: TextStyle(
              //                   color: background,
              //                   fontSize: 16,
              //                   fontWeight: FontWeight.w600,
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //         Expanded(
              //           child: Container(
              //             height: 55,
              //             width: 133,
              //             margin: const EdgeInsets.only(
              //                 left: 20, right: 20, top: 25),
              //             child: ElevatedButton(
              //               onPressed: () {
              //                 Navigator.push(
              //                   context,
              //                   MaterialPageRoute(builder: (context) => const BookRide()
              //                   ),
              //                 );
              //               },
              //               style: ElevatedButton.styleFrom(
              //                 backgroundColor: white,
              //                 // You should define 'background'
              //                 padding: const EdgeInsets.only(top: 17, bottom: 16),
              //                 shape: RoundedRectangleBorder(
              //                   borderRadius: BorderRadius.circular(10),
              //                 ),
              //               ),
              //               child: Text(
              //                 "Yes",
              //                 style: TextStyle(
              //                   color: black,
              //                   fontSize: 16,
              //                   fontWeight: FontWeight.bold,
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ],
              // ),
            ),

          ),
          // Add other widgets for the main content of the page
        ],
      ),

    );
  }
}
