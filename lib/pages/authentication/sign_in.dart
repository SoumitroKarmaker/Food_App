import 'package:flutter/material.dart';
import 'package:food_app/pages/authentication/sign-up.dart';
import 'package:food_app/pages/authentication/signIn_Process.dart';
import 'package:food_app/widgets/customButton.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const_data/app_colors.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                const SizedBox(
                  width: double.infinity,
                  height: 10,
                ),
                Image.asset(
                  'assects/images_and_logo/splash_screen/logo.png',
                ),
                const Text(
                  'FoodNinja',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColor.mainColor),
                ),
                const Text(
                  'Deliever Favourite Food',
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Login To Your Acount',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
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
                        offset: const Offset(0, 2), // Set the shadow offset
                      ),
                    ],
                  ),
                  child: AppTextField(
                    textFieldType: TextFieldType.NAME,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: const Color(0xff15BE77).withOpacity(0.4),
                              width: 1)),
                      hintText: 'Email',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
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
                        offset: const Offset(0, 2), // Set the shadow offset
                      ),
                    ],
                  ),
                  child: AppTextField(
                    textFieldType: TextFieldType.PASSWORD,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: const Color(0xff15BE77).withOpacity(0.4),
                              width: 1)),
                      hintText: 'Password',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Or Continue With',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey
                                .withOpacity(0.2), // Set the shadow color
                            spreadRadius: 2, // Set the spread radius
                            blurRadius: 10, // Set the blur radius
                            offset: const Offset(0, 2), // Set the shadow offset
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right:5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height/2,
                                child: Image.asset(
                                    'assects/images_and_logo/accessories_logo_and_icon/facebook.png')),
                            const Text('Facebook', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey
                                .withOpacity(0.2), // Set the shadow color
                            spreadRadius: 2, // Set the spread radius
                            blurRadius: 10, // Set the blur radius
                            offset: const Offset(0, 2), // Set the shadow offset
                          ),
                        ],
                      ),
                     child: Padding(
                    padding: const EdgeInsets.only(right:5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height:35,
                    child: Image.asset(
                        'assects/images_and_logo/accessories_logo_and_icon/google.png')),
                const SizedBox(width: 7,),
                const Text('Google', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
                    ),

                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text('Forgot Your Password ?',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColor.mainColor)),
                const SizedBox(
                  height: 15,
                ),
                CustomButton(
                    text: 'Login',
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignIn_Process()));
                    }),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SginUp()));
                },
                    child: const Text('Create an account',style: TextStyle(color: Colors.red),)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

