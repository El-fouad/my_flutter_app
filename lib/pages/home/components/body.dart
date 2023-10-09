import 'package:flutter/material.dart';
import 'package:my_app/constants/contants.dart';
import 'package:my_app/model/Products.dart';
import 'package:my_app/pages/details/details_screen.dart';
import 'package:my_app/wiidgets/categories.dart';
import 'package:my_app/wiidgets/items_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(KDefaultPadding),
          child: Text(
            "Women",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        const Categories(),
        Expanded(
          child: Padding(
              padding: const EdgeInsets.all(KDefaultPadding),
              child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: KDefaultPadding,
                      childAspectRatio: 0.65),
                  itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailsSreen(product: products[index])))))),
        )
      ],
    );
  }
}
