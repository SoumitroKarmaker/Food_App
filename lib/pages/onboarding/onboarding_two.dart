import 'package:flutter/material.dart';

import '../../widgets/customButton.dart';
import '../authentication/sign_in.dart';

class OnBoardingTwo extends StatefulWidget {
  const OnBoardingTwo({Key? key}) : super(key: key);

  @override
  State<OnBoardingTwo> createState() => _OnBoardingTwoState();
}

class _OnBoardingTwoState extends State<OnBoardingTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assects/images_and_logo/onboarding/onboardingTwo.png'),
              const SizedBox(height: 20,),
              Column(
                children: [
                  const Text(
                    'food Ninja is Where your\nConfort Food Lives',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      'Enjoy a fast and smooth food delivery at\nyour doorstep',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomButton(
                    text: 'Next',
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const SignIn()));
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
