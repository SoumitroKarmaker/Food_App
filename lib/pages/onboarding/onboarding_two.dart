import 'package:flutter/material.dart';

import '../../widgets/customButton.dart';
import '../authentication/sign-up.dart';

class OnBoardingTwo extends StatefulWidget {
  const OnBoardingTwo({Key? key}) : super(key: key);

  @override
  State<OnBoardingTwo> createState() => _OnBoardingTwoState();
}

class _OnBoardingTwoState extends State<OnBoardingTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('assects/images/onboarding/onboardingTwo.png'),
            Spacer(),
            Column(
              children: [
                const Text(
                  'food Ninja is Where your\nConfort Food Lives',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                    'Enjoy a fast and smooth food delivery at\nyour doorstep',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                CustomButton(
                  text: 'Next',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SginUp()));
                  },
                ),
                SizedBox(
                  height: 50,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
