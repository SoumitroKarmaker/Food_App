import 'package:flutter/material.dart';
import 'package:food_app/pages/setpu%20pages/upload_photo.dart';
import 'package:food_app/widgets/customButton.dart';

class Payment_Method extends StatelessWidget {
  const Payment_Method({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
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
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset(
                          'assects/images_and_logo/accessories_logo_and_icon/paypal.png',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
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
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          'assects/images_and_logo/accessories_logo_and_icon/visa.png',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
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
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset(
                          'assects/images_and_logo/accessories_logo_and_icon/payoneer.png',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomButton(text: 'Next', onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Upload_Photo()));
                    }),
                    SizedBox(
                      height: 30,
                    ),
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
