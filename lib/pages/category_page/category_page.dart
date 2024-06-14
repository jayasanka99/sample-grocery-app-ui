import 'package:flutter/material.dart';
import 'package:sample_grocery/pages/category_page/widgets/category_card.dart';
import 'package:sample_grocery/pages/category_page/widgets/point.dart';
import 'package:sample_grocery/pages/category_page/widgets/ratings_bar.dart';

import '../widgets/shared/banner.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        title: const Text(
          "Categories",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AdvBanner,
              const SizedBox(height: 20),
              const Text(
                "All Categories",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff3B3636),
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryCard(title: "Vegetables & \n Fruits", content: "20+ more ...",bgColor: Color(0xff0057FF), circleColor: Color(0xff0E00AC), borderColor: Color(0xff0094FF)),
                  CategoryCard(title: "Bites & \n Drinks", content: "253+ more ...",bgColor: Color(0xff70FF00), circleColor: Color(0xff06FFA5), borderColor: Color(0xff00FF29)),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryCard(title: "Cooking & \n Elements", content: "10+ more ...",bgColor: Color(0xff00E0FF), circleColor: Color(0xff10C0F8), borderColor: Color(0xff00F0FF)),
                  CategoryCard(title: "Chickens & \n Beef", content: "2+ more ...",bgColor: Color(0xffF9F262), circleColor: Color(0xffFF9900), borderColor: Color(0xffFFB800)),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryCard(title: "Vegetables & \n Fruits", content: "20+ more ...",bgColor: Color(0xffFF3D00), circleColor: Color(0xffE56C6C), borderColor: Color(0xffFFA800)),
                  CategoryCard(title: "Transport & \n Vehicles", content: "20+ more ...",bgColor: Color(0xffCC00FF), circleColor: Color(0xffDB00FF), borderColor: Color(0xffCC00FF)),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Selected Items",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff3B3636),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Colors.white,border: Border.all(color: const Color(0xffE0DCD6).withOpacity(0.3), width: 10)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "Vegetables",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3B3636),
                        ),
                      ),
                      const Point(number: 1, content: "Vegetables are parts of plants that are consumed by humans..."),
                      const Point(number: 2, content: "Vegetables are parts of plants that are consumed by humans..."),
                      const Point(number: 3, content: "Vegetables are parts of plants that are consumed by humans..."),
                      const Point(number: 4, content: "Vegetables are parts of plants that are consumed by humans..."),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: const Color(0xffCACACA).withOpacity(0.31)),
                          child:ratingBar,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
