import 'package:flutter/material.dart';

Widget ratingBar =  Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Icon(Icons.star, color: const Color(0xffFFE500),size: 30,),
      Icon(Icons.star, color: const Color(0xffFFE500),size: 30,),
      Icon(Icons.star, color: const Color(0xffFFE500),size: 30,),
      Icon(Icons.star, color: const Color(0xffFFE500),size: 30,),
      Icon(Icons.star, color: const Color(0xff3B3636).withOpacity(0.75),size: 30,),
    ],
  ),
);