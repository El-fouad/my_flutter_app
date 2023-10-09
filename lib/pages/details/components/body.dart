
import 'package:flutter/material.dart';
import 'package:my_app/model/Products.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  height: 500 ,
                  decoration: const BoxDecoration(color: Colors.white),
                )
              ],
            ),
          )
      ]),
    );
  }
}