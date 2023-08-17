import 'package:flutter/material.dart';
import 'package:storeapp/core/routes/routes.dart';

import '../constant.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(
        seconds: Constant.splashTime,
      ),
      () {
        Navigator.pushReplacementNamed(context, routes.HomePage);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("saf"),);
  }
}
/*
* Scaffold(
      body: Stack(
        children: [
          Image.asset(
            ManagerAssets.splash1,
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
          ),
          Align(
            child: Image.asset(
              ManagerAssets.splash3,
              filterQuality: FilterQuality.high,
            ),
          ),
          Align(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ManagerAssets.splash2,
                ),
                const Text(
                  ManagerStrings.appName,
                  style: TextStyle(fontSize: ManagerFontSizes.s20),
                )
              ],
            ),
          ),
        ],
      ),
    )*/
