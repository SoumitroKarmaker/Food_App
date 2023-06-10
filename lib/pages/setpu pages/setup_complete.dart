import 'package:flutter/material.dart';
import 'package:food_app/const_data/app_colors.dart';
import 'package:food_app/widgets/customButton.dart';

class SetUp_Complete extends StatefulWidget {
  const SetUp_Complete({Key? key}) : super(key: key);

  @override
  State<SetUp_Complete> createState() => _SetUp_CompleteState();
}

class _SetUp_CompleteState extends State<SetUp_Complete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: double.infinity,),
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
            SizedBox(height: 30,),
            Text(
              'Congrats!',
              style: TextStyle(fontSize: 35, color: AppColor.mainColor, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15,),
            Text(
              'Your Profile Is Ready To Use',
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30,),
            CustomButton(text: 'Try Order', onTap: (){}),
          ],
        ),
      ),
    );
  }
}