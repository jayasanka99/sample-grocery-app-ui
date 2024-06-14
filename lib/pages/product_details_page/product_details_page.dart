import 'package:flutter/material.dart';
import 'package:sample_grocery/pages/product_details_page/widgets/price_list.dart';
import 'package:sample_grocery/pages/product_details_page/widgets/product_information.dart';
import 'package:sample_grocery/pages/widgets/shared/gradient_btn.dart';

import '../widgets/shared/banner.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        title: const Text(
          "Product Details",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AdvBanner,
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffFFF500).withOpacity(0.29),
                  ),
                  child: Icon(
                    Icons.add_shopping_cart,
                    size: 200,
                    color: const Color(0xff333333).withOpacity(0.75),
                  ),
                ),
              ),
              const ProductInformation(
                  title: "Product Information",
                  content:
                      "vegetable,  in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish."),
              const SizedBox(
                height: 10,
              ),
              const ProductInformation(
                  title: "Product Information",
                  content:
                      "vegetable,  in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish."),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Price List",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Color(0xff3B3636)),
              ),
              const SizedBox(
                height: 20,
              ),
              const PriceList(
                  number: 1, name: "Green peas", weight: 100, unit: "g"),
              const Divider(
                thickness: 2,
              ),
              const PriceList(
                  number: 2,
                  name: "Brussels sprouts.",
                  weight: 100.51651,
                  unit: "g"),
              const Divider(
                thickness: 2,
              ),
              const PriceList(
                  number: 3, name: "Broccoli", weight: 100, unit: "g"),
              const Divider(
                thickness: 2,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(180, 0, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(
                          color: Color(0xff3B3636),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "230\$",
                      style: TextStyle(
                          color: Color(0xff9E00FF),
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              GradientBtn(topColor: Color(0xff9E00FF), bottomColor: Color(0xff06FFA5), btnText: "Proceed To Pay",btnHeight: 60,btnWidth: double.infinity,),
            ],
          ),
        ),
      ),
    );
  }
}
