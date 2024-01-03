// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/desgin3_3.dart';

class design3 extends StatelessWidget {
  const design3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/scree1d3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient:  LinearGradient(begin: Alignment.bottomRight, stops: const [
            0.1,
            0.9
          ], colors: [
            Colors.black.withOpacity(
              0.8,
            ),
            Colors.black.withOpacity(
              0.1,
            ),
          ])),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  "Taking Order For Deloivery",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.sp,
                      fontWeight: FontWeight.bold),
                ),
                 SizedBox(
                  height: 30,
                ),
                 Text(
                  "see resturants nearby\n by adding location",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500),
                ),
                 SizedBox(
                  height: 150.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [
                          Colors.orange,
                          Colors.yellow,
                        ]),
                        borderRadius: BorderRadius.circular(20)),
                    child: MaterialButton(
                        minWidth: double.infinity,
                        onPressed: () => const desgin3_3(),
                        child:  Text(
                          "Start",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        )),
                  ),
                ),

                const Align(
                  child: Text("Made in Body",style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
