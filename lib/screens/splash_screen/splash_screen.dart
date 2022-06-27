import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loan_tracker/AppStyle/app_style.dart';

import '../home/home_screen.dart';
import 'bloc/splash_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.primaryColor,
      body: BlocProvider(
        create: (context) => SplashBloc()..add(NavigateToHomeScreenEvent()),
        child: BlocConsumer<SplashBloc, SplashState>(
          listener: (context, state) {
            if (state is SplashLoaded) {
              Navigator.pushAndRemoveUntil<dynamic>(
                  context,
                  MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) => const HomeScreen(),
                  ),
                  (route) => false);
            }
          },
          builder: (context, state) {
            return SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Here place your app logo, tagline etc..
                    Image.asset(
                      "assets/images/logo.png",
                      height: MediaQuery.of(context).size.width * .5,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
