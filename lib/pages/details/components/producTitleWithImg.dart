// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:my_app/constants/contants.dart';
import 'package:my_app/model/Products.dart';

// ignore: camel_case_types
class productTitleWithImage extends StatelessWidget {
  const productTitleWithImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: KDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Aristocatic Hand Bag",
            style: TextStyle(
              color: Color.fromARGB(239, 221, 221, 221),
            ),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: KDefaultPadding,
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(children: [
                  const TextSpan(text: "price \n"),
                  TextSpan(
                    text: "\$${product.price}",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                  )
                ]),
              ),
              const SizedBox(
                width: KDefaultPadding,
              ),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
