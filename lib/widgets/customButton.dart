import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double ? width;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.text, required this.onTap, this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: width ?? 100,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  offset: Offset(2, 3),
                  spreadRadius: 2,
                  blurRadius: 7,
                  color: Colors.greenAccent)
            ],
            borderRadius: BorderRadius.circular(10),
            gradient:
                const LinearGradient(colors: [Color(0xff53E88d), Color(0xff15BE77)])),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
              fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
