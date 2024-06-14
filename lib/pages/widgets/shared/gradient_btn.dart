import 'package:flutter/material.dart';

class GradientBtn extends StatelessWidget {
  const GradientBtn({super.key, required this.topColor, required this.bottomColor, required this.btnHeight, required this.btnWidth, required this.btnText});

  final Color topColor;
  final Color bottomColor;
  final double btnHeight;
  final double btnWidth;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Container(
        alignment: Alignment.center,
        height: btnHeight,
        width: btnWidth,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: LinearGradient(
              colors: [
                topColor,
                bottomColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
        child: Text(
          btnText,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
