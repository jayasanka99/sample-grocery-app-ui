import 'package:flutter/material.dart';

Widget appBarLeading = Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
    height: 30,
    width: 30,
    decoration:
        const BoxDecoration(color: Color(0xFF9E00FF), shape: BoxShape.circle),
    child: const Center(
      child: Icon(
        Icons.add_location_alt,
        color: Colors.white,
      ),
    ),
  ),
);

Widget appBarTitle = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      "Delivery Address",
      style: TextStyle(
          color: const Color(0xFF3B3636).withOpacity(0.47), fontSize: 16),
    ),
    const Text(
      "92 High Street , London",
      style: TextStyle(
        color: Color(0xFF3B3636),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  ],
);

List<Widget>? appBarActions = [
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: const Color(0xFFFF9900).withOpacity(0.52),
          shape: BoxShape.circle),
      child: const Center(
        child: Icon(
          Icons.shopping_bag,
          color: Colors.white,
        ),
      ),
    ),
  ),
];
