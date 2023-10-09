import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_app/constants/contants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(KDefaultPadding),
          child: Text(
            "Women",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        Categories()
      ],
    );
  }
}

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CatgforiesState();
}

class _CatgforiesState extends State<Categories> {
  List<String> Categories = ["Hand bag ", "Jewellery", "Footwear", "Dresses"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Categories.length,
        itemBuilder: (context, index) => buildCategory(index),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () => {
        setState((){
          selectedIndex = index;
        })
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
            Categories[index],
            style:
              TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? KTextColor : KTexyLightColor
                ),
          ),
          Container(
            height: 2,
            width: 30,
            color: selectedIndex == index? Colors.black:Colors.transparent,
          )
        ]),
      ),
    );
  }
}
