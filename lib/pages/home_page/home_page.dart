import 'package:flutter/material.dart';
import 'package:sample_grocery/pages/home_page/widgets/search_bar.dart';
import 'package:sample_grocery/pages/widgets/app_bar/app_bar.dart';
import 'package:sample_grocery/pages/widgets/reusable/big_card.dart';
import '../widgets/reusable/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: appBarLeading,
        title: appBarTitle,
        actions: appBarActions,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              searchBar,
              const SizedBox(height: 10),
              const Text(
                "Explore Categories",
                style: TextStyle(
                    color: Color(0xFF3B3636),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigCard(
                    title: "Vegetables",
                    content:
                        "Vegetables are parts of plants that are consumed by humans...",
                    mainColor: Color(0xFF9E00FF),
                    secondaryColor: Color(0xFF06FFA5),
                    txtColor: Color(0xffFFFFFF),
                  ),
                  BigCard(
                      title: "Fish & Meat",
                      content:
                          "Fish is the flesh of an animal used for food, and by that definition...",
                      mainColor: Color(0xFF9E00FF),
                      secondaryColor: Color(0xFF06FFA5),
                      txtColor: Color(0xffFFFFFF)),
                ],
              ),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigCard(
                    title: "Vegetables",
                    content:
                        "Vegetables are parts of plants that are consumed by humans...",
                    mainColor: Color(0xFFFFE500),
                    secondaryColor: Color(0xFFFF9900),
                    txtColor: Color(0xff3B3636),
                  ),
                  BigCard(
                    title: "Fish & Meat",
                    content:
                        "Fish is the flesh of an animal used for food, and by that definition...",
                    mainColor: Color(0xFFFFE500),
                    secondaryColor: Color(0xFFFF9900),
                    txtColor: Color(0xff3B3636),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "For Sale and Low Cost",
                style: TextStyle(
                    color: Color(0xFF3B3636),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  ProductCard(
                      name: "Washing Liquid", price: 230, qty: 220 , unit: "ml"),
                  SizedBox(width: 10),
                  ProductCard(
                      name: "Coffee and Tea", price: 30, qty: 100 , unit: "g"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
