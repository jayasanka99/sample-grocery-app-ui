import 'package:flutter/material.dart';

Widget AdvBanner = Container(
  height: 90,
  width: double.infinity,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: const Color(0xffF2E4CE),
    border: Border.all(color: const Color(0xffFF9900), width: 1),
  ),
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Get 100% off on Groceries Plus T&C Apply",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xffFF9900),
          ),
        ),
        Text("Sped payments with master and visa",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: const Color(0xff3B3636).withOpacity(0.47),
          ),
        ),
      ],
    ),
  ),
);