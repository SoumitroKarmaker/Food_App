import 'package:flutter/material.dart';

import '../../widgets/customButton.dart';
import 'onboarding_two.dart';

class OnBoardingOne extends StatefulWidget {
  const OnBoardingOne({Key? key}) : super(key: key);

  @override
  State<OnBoardingOne> createState() => _OnBoardingOneState();
}

class _OnBoardingOneState extends State<OnBoardingOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assects/images_and_logo/onboarding/onboarding.png'),
              SizedBox(height: 20,),
              Column(
                children: [
                  const Text(
                    'Find your Confort\nFood here',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      'Here YOu Can find a chef or dish for every\ntast and color. Enjoy!',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomButton(
                    text: 'Next',
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoardingTwo()));
                    },
                  ),
                  SizedBox(height: 50,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


