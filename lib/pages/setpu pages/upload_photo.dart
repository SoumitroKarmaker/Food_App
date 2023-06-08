import 'package:flutter/material.dart';

class Upload_Photo extends StatelessWidget {
  const Upload_Photo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
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
                    child: Align(
                        alignment: Alignment.center,
                        child: Icon(Icons.arrow_back_ios)),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Payment Method',
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
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
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
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
