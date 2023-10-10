import 'package:flutter/material.dart';
import 'package:my_app/constants/contants.dart';
import 'package:my_app/model/Products.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: KDefaultPadding),
      child: Text(product.description,
      style: const TextStyle(
        height: 1.5,
        color: KTextColor
      ),),
    );
  }
}

