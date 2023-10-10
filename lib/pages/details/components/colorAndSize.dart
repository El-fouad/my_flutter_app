// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:my_app/constants/contants.dart';
import 'package:my_app/model/Products.dart';

// ignore: camel_case_types
class colorAndSize extends StatelessWidget {
  const colorAndSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color"),
              Row(children: [
                colorDot(
                    color: Color(0xFF356C95), isSelected: true),
                colorDot(
                  color: Color(0xFFF8C078),
                ),
                colorDot(
                  color: Color(0xFFA29B9B),
                ),
              ])
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(
                  style: const TextStyle(
                    color: KTextColor,
                  ),
                  children: [
                const TextSpan(text: "Size \n"),
                TextSpan(
                    text: "${product.size} cm",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(
                            color: KTextColor,
                            fontWeight: FontWeight.w700))
              ])),
        )
      ],
    );
  }
}

// ignore: camel_case_types
class colorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const colorDot({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      margin: const EdgeInsets.only(
          top: KDefaultPadding / 4, right: KDefaultPadding / 2),
      padding: const EdgeInsets.all(2.5),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isSelected ? color : Colors.transparent)),
      child: DecoratedBox(
          decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      )),
    );
  }
}
