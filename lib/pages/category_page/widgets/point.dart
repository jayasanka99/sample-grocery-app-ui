import 'package:flutter/material.dart';

class Point extends StatelessWidget {
  const Point({super.key, required this.number, required this.content});

  final int number;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          // alignment: Alignment.center,
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: const Color(0xffFFE500)),
          child: Center(
            child: Text(
              number.toString(),
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff000000),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 250,
          child: Text(
            content,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        )
      ],
    );
  }
}
