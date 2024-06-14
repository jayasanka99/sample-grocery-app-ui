import 'package:flutter/material.dart';

class PriceList extends StatelessWidget {
  const PriceList({super.key, required this.number, required this.name, required this.weight, required this.unit});

  final int number;
  final String name;
  final double weight;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // alignment: Alignment.center,
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: const Color(0xffFFE500)),
            child: Center(
              child: Text(
                number.toString(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
                ),
              ),
            ),
          ),
          // SizedBox(width: 20,),
          SizedBox(
            width: 100,
            child: Text(
              name,
              style: TextStyle(
                fontSize: 18,
                color: const Color(0xff3B3636).withOpacity(0.75),
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            height: 40,
            width: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xff3B3636).withOpacity(0.1)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                  "${weight.toStringAsFixed(2)} $unit"),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border:
                            Border.all(color: const Color(0xff3B3636), width: 1)),
                    child: const Icon(
                      Icons.add,
                      size: 10,
                      color: Color(0xff3B3636),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border:
                            Border.all(color: const Color(0xff3B3636), width: 1)),
                    child: const Center(
                      child: Icon(
                        Icons.remove,
                        size: 10,
                        color: Color(0xff3B3636),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
