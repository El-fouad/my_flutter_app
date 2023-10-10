import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:my_app/constants/contants.dart';
import 'package:my_app/model/Products.dart';
import 'package:my_app/pages/details/components/body.dart';

class DetailsSreen extends StatelessWidget {
  final Product product;

  const DetailsSreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.arrow_back),
      ),
      actions: [
        IconButton(onPressed: () => {}, icon: const Icon(Icons.search)),
        IconButton(
            onPressed: () => {showSearch(context: context, delegate:SearchBar())},
            icon: const Icon(Icons.add_shopping_cart)),
        const SizedBox(
          width: KDefaultPadding / 2,
        )
      ],
    );
  }
}
