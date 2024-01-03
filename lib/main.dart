import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_ui/desgin2.dart';
import 'package:flutter_ui/design4.dart';
// import 'package:flutter_ui/desgin2.dart';

// import 'design1.dart';
import 'design3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        color: Colors.grey,
        home: design4(),
      ),
    );
  }
}
