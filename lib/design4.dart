// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class design4 extends StatefulWidget {
  const design4({super.key});

  @override
  State<design4> createState() => _design3State();
}

class _design3State extends State<design4> {
  final List<String> _listitem = [
    "images/home1.jpeg",
    "images/home2.jpeg",
    "images/home3.webp",
    "images/home4.webp",
    "images/home5.jpeg",
    "images/home6.webp",
    "images/home7.jpeg",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
          ),
        ),
        title:  Text("Design House",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 17.sp)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 250.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius
                        .circular(30)
                        .w,
                    image: const DecorationImage(
                      image: AssetImage(
                        "images/house.webp",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius
                          .circular(30)
                          .w,
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          stops: const [
                            0.1,
                            0.9
                          ],
                          colors: [
                            Colors.black.withOpacity(.8),
                            Colors.black.withOpacity(.1),
                          ]),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Lifestyle Sale",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40.sp,
                                color: Colors.grey[200]),
                          ),
                          SizedBox(
                            height: 50.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              width: 150.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius
                                    .circular(20)
                                    .w,
                              ),
                              child:  Center(
                                child: Text(
                                  "Show Now",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize:15.sp),
                                ),
                              ),
                            ),
                          )
                        ]),
                  ),
                )),
            Row(

               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                    child: Text("Made In Body",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15.sp,color: Colors.white))),
              ],
            ),

            SizedBox(
              height: 10.h,
            ),

            Expanded(
                child: GridView.count(
                    crossAxisCount: 2,
                    padding: EdgeInsets.all(10.r),
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: _listitem
                        .map((item) =>
                        Card(
                          color: Colors.grey[600],
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                  image: AssetImage(item),
                                  fit: BoxFit.cover),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  child: IconButton(onPressed: () {},
                                      icon: Icon(Icons.bookmark_add,
                                        color: Colors.white,)),
                                ),
                              ],
                            ),
                          ),
                        ))
                        .toList())),
          ],
        ),
      ),
    );
  }
}
