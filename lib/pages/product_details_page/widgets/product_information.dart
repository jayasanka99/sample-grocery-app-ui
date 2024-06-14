import 'package:flutter/material.dart';

class ProductInformation extends StatelessWidget {
  const ProductInformation({super.key, required this.title, required this.content});

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Color(0xff3B3636)),),
        const SizedBox(height: 10,),
        Text(content,
          style: TextStyle(fontSize: 18,color: const Color(0xff3B3636).withOpacity(0.75)),),
      ],
    );
  }
}
