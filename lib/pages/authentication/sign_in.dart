import 'package:flutter/material.dart';
import 'package:food_app/pages/authentication/sign-up.dart';
import 'package:food_app/widgets/customButton.dart';
import 'package:nb_utils/nb_utils.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SingleChildScrollView(

            child: Column(
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
                      color: Colors.green),
                ),
                Text(
                  'Deliever Favourite Food',
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Login To Your Acount',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                AppTextField(
                  textFieldType: TextFieldType.NAME,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Email',
                  ),
                ),
                SizedBox(height: 15,),
                AppTextField(textFieldType: TextFieldType.PASSWORD,
                decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Password'),),
                Spacer(),
                CustomButton(
                    text: 'Login',
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SginUp()));
                    }),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
