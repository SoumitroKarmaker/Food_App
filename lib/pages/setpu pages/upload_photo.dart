import 'package:flutter/material.dart';
import 'package:food_app/pages/setpu%20pages/upload_preview.dart';
import 'package:food_app/widgets/customButton.dart';

class Upload_Photo extends StatelessWidget {
  const Upload_Photo({Key? key}) : super(key: key);

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
                  'Upload YOur Photo\nProfile',
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
                          offset: const Offset(0, 2), // Set the shadow offset
                        ),
                      ],
                    ),
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                        'assects/images_and_logo/accessories_logo_and_icon/gallery.png')),
                const SizedBox(
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
                          offset: const Offset(0, 2), // Set the shadow offset
                        ),
                      ],
                    ),
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                        'assects/images_and_logo/accessories_logo_and_icon/camera.png')),
                const SizedBox(
                  height: 30,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                        text: 'Next',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Upload_Preview()));
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
