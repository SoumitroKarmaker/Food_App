import 'package:flutter/material.dart';
import 'package:food_app/pages/authentication/sign_in.dart';
import 'package:food_app/widgets/customButton.dart';
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 10,
                ),
                Image.asset(
                  'assects/images_and_logo/splash_screen/logo.png',
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
                Container(
                  // this container for apptextfield shadow
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey
                            .withOpacity(0.2), // Set the shadow color
                        spreadRadius: 2, // Set the spread radius
                        blurRadius: 10, // Set the blur radius
                        offset: Offset(0, 2), // Set the shadow offset
                      ),
                    ],
                  ),
                  child: AppTextField(
                    textFieldType: TextFieldType.NAME,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: AppColor.mainColor,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: Color(0xff15BE77).withOpacity(0.4),
                              width: 1)),
                      hintText: 'User Name',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  // this container for apptextfield shadow
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey
                            .withOpacity(0.2), // Set the shadow color
                        spreadRadius: 2, // Set the spread radius
                        blurRadius: 10, // Set the blur radius
                        offset: Offset(0, 2), // Set the shadow offset
                      ),
                    ],
                  ),
                  child: AppTextField(
                    textFieldType: TextFieldType.NAME,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.mail,
                        color: AppColor.mainColor,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: Color(0xff15BE77).withOpacity(0.4),
                              width: 1)),
                      hintText: 'Email',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  // this container for apptextfield shadow
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey
                            .withOpacity(0.2), // Set the shadow color
                        spreadRadius: 2, // Set the spread radius
                        blurRadius: 10, // Set the blur radius
                        offset: Offset(0, 2), // Set the shadow offset
                      ),
                    ],
                  ),
                  child: AppTextField(
                    textFieldType: TextFieldType.PASSWORD,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: AppColor.mainColor,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: Color(0xff15BE77).withOpacity(0.4),
                              width: 1)),
                      hintText: 'Password',
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                      width: double.infinity,
                    ),
                    Text('Keep Me Signed In'),
                    SizedBox(
                      height: 15,
                    ),
                    Text('Email Me About Special Pricing'),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                CustomButton(width: 150, text: 'Create Acount', onTap: () {}),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    child: Text('Already have an acount?')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
