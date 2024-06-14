import 'package:flutter/material.dart';

Widget searchBar = Padding(
  padding: const EdgeInsets.symmetric(vertical: 10),
  child:   Container(
    height: 50,
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color(0xffD9D9D9).withOpacity(0.5)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
      child: Row(
        children: [
          Icon(
            Icons.search,
            size: 30,
            color: Colors.black.withOpacity(0.5),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  hintText: "Search here...",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.5),fontSize: 20,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 11)
              ),
            ),
          ),
        ],
      ),
    ),
  ),
);