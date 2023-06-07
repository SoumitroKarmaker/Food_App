import 'package:flutter/material.dart';
import 'package:food_app/widgets/customButton.dart';
import 'package:nb_utils/nb_utils.dart';

class SignIn_Process extends StatefulWidget {
  const SignIn_Process({Key? key}) : super(key: key);

  @override
  State<SignIn_Process> createState() => _SignIn_ProcessState();
}

class _SignIn_ProcessState extends State<SignIn_Process> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green.withOpacity(0.2),
                    ),
                      child: Align(
                        alignment: Alignment.center,
                          child: Icon(Icons.arrow_back_ios)),
                  ),
                ),
                SizedBox(height: 15,),
                Text(
                  'Fill in our bio to get\nstarted',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'This data will be desplayed in your account\nprofile for security',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20,),
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
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: Color(0xff15BE77).withOpacity(0.4),
                              width: 1)),
                      hintText: 'First Name',
                    ),
                  ),
                ),
                SizedBox(height: 20,),
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
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: Color(0xff15BE77).withOpacity(0.4),
                              width: 1)),
                      hintText: 'Last Name',
                    ),
                  ),
                ),
                SizedBox(height: 15,),
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
                    textFieldType: TextFieldType.NUMBER,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: Color(0xff15BE77).withOpacity(0.4),
                              width: 1)),
                      hintText: 'Mobile Number',
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(text: 'Next', onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ))
                    }),
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
