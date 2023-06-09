import 'package:flutter/material.dart';
import 'package:food_app/pages/setpu%20pages/set_location.dart';
import 'package:food_app/widgets/customButton.dart';

class Upload_Preview extends StatefulWidget {
  const Upload_Preview({Key? key}) : super(key: key);

  @override
  State<Upload_Preview> createState() => _Upload_PreviewState();
}

class _Upload_PreviewState extends State<Upload_Preview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green.withOpacity(0.2),
                    ),
                    child: const Align(
                        alignment: Alignment.center,
                        child: Icon(Icons.arrow_back_ios)),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Photo Preview',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'This data will be desplayed in your account\nprofile for security',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width,),
                    Container(height: 200,width: 200, decoration: BoxDecoration(
                      color: Colors.blue,
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
                    ),),
                    const SizedBox(
                      height: 70,
                    ),
                    CustomButton(text: 'Next', onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Set_Location()));
                    }),
                    const SizedBox(height: 30,),
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
