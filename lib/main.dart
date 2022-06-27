import 'package:flutter/material.dart';
import 'package:loan_tracker/screens/splash_screen/splash_screen.dart';

import 'AppStyle/app_style.dart';
import 'AppStyle/pallate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Palette.kToDark,
          primaryColor: AppStyle.backgroundColor,
        ),
      home: const SplashScreen(),
    );
  }
}

