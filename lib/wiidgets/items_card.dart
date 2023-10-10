import 'package:flutter/material.dart';
import 'package:my_app/model/Products.dart';

import '../constants/contants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const ItemCard({
    super.key,
    required this.product,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(KDefaultPadding),
            decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(KDefaultPadding)),
            child:
                Hero(tag: "${product.id}", child: Image.asset(product.image)),
          ),
        ),
        Text(product.title),
        Text("\$ ${product.price}")
      ]),
    );
  }
}
