import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {super.key,
      required this.bgColor,
      required this.circleColor,
      required this.title,
      required this.content,
      required this.borderColor});

  final Color bgColor;
  final Color circleColor;
  final Color borderColor;
  final String title;
  final String content;

  final int containerHeight = 100;
  final int containerWidth = 190;
  final int circleHeight = 55;
  final int circleWidth = 55;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight.toDouble(),
      width: containerWidth.toDouble(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor, width: 2),
        color: bgColor.withOpacity(0.29),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff3B3636).withOpacity(0.91),
                  ),
                ),
                Text(
                  content,
                  style: TextStyle(
                      color: const Color(0xff3B3636).withOpacity(0.47),
                      fontSize: 16),
                ),
              ],
            ),
            Container(
              height: circleHeight.toDouble(),
              width: circleWidth.toDouble(),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: circleColor),
            )
          ],
        ),
      ),
    );
  }
}
