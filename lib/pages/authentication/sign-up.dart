import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const_data/app_colors.dart';

class SginUp extends StatefulWidget {
  const SginUp({Key? key}) : super(key: key);

  @override
  State<SginUp> createState() => _SginUpState();
}

class _SginUpState extends State<SginUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: 20,
              ),
              Image.asset(
                'assects/images/splash_screen/logo.png',
              ),
              Text(
                'FoodNinja',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: AppColor.mainColor),
              ),
              Text(
                'Deliever Favourite Food',
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
              SizedBox(
                height: 40,
              ),
              Text('Sign Up For Free',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 20,
              ),
              AppTextField(
                textFieldType: TextFieldType.NAME,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),hintText: 'User name'
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
