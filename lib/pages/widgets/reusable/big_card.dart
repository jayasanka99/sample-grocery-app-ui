import 'package:flutter/material.dart';

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.mainColor,
    required this.secondaryColor,
    required this.title,
    required this.content,
    required this.txtColor
  });

  final Color mainColor;
  final Color secondaryColor;
  final String title;
  final String content;
  final Color txtColor;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 195,
      decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(20)),
      child:Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              title,
              style: TextStyle(
                  color: txtColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            // SizedBox(height: 10),
            Text(
              content,
              style: TextStyle(
                color: txtColor,
                fontSize: 15,
              ),
            ),
            Container(
              height: 90,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(20)),
            )
          ],
        ),
      ),
    );
  }
}
