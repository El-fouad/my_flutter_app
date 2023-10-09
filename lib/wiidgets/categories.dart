// ignore: file_names
import 'package:flutter/material.dart';
import 'package:my_app/constants/contants.dart';



class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CatgforiesState();
}

class _CatgforiesState extends State<Categories> {
  // ignore: non_constant_identifier_names
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
