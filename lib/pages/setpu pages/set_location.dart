import 'package:flutter/material.dart';
import 'package:food_app/pages/setpu%20pages/setup_complete.dart';
import 'package:food_app/widgets/customButton.dart';

class Set_Location extends StatelessWidget {
  const Set_Location({Key? key}) : super(key: key);

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
                  'Set Your Location',
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
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assects/images_and_logo/accessories_logo_and_icon/location.png',
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Text(
                                'Your Location',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                boxShadow: [
                                  BoxShadow(
                                      offset: const Offset(2, 3),
                                      spreadRadius: 2,
                                      blurRadius: 7,
                                      color: Colors.black.withOpacity(0.2))
                                ],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                  child: Text(
                                'Set Location',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                          const SizedBox(height: 30,),
                        ],
                      ),
                    )
                  ],
                ),
              const SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(text: 'Next', onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SetUp_Complete()));
                  }),
                ],
              ),
              ],
              
            ),
          ),
        ),
      ),
    );
  }
}
