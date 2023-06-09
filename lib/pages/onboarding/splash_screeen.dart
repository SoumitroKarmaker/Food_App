import 'package:flutter/material.dart';
import 'package:food_app/const_data/app_colors.dart';
import 'package:nb_utils/nb_utils.dart';

import 'onboarding_one.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    goToHome();
  }

  Future<void> goToHome() async {
    await Future.delayed(const Duration(seconds: 5)).then((value) =>
        const OnBoardingOne().launch(context,
            isNewTask: true, pageRouteAnimation: PageRouteAnimation.Scale));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assects/images_and_logo/splash_screen/logo.png',
          ),
          const Text(
            'FoodNinja',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: AppColor.mainColor),
          ),
          const Text(
            'Deliever Favourite Food',
            style: TextStyle(fontSize: 15, color: Colors.black54),
          )
        ],
      )),
    );
  }
}
