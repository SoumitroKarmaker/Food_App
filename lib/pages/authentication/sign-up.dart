import 'package:flutter/material.dart';

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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: double.infinity,height: 20,),
                Image.asset(
                  'assects/images/splash_screen/logo.png',
                ),
                Text(
                  'FoodNinja',
                  style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green),
                ),
                Text(
                  'Deliever Favourite Food',
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                )
          ],
        ),
      ),
    );
  }
}
