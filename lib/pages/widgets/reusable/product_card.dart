import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.price, required this.qty, required this.name, required this.unit});

  final int price;
  final int qty;
  final String name;
  final String unit;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 195,
      decoration: BoxDecoration(
          color:  const Color(0xff9E00FF),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 90,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xff06FFA5),
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
            Text(
              name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      qty.toString() + " " + unit,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15),
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      price.toString() + "\$",
                      style: const TextStyle(
                          color: Color(0xFFFFE500),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Icon(Icons.add_shopping_cart,size: 40,color: Colors.white,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
