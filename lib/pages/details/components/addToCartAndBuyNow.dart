
import 'package:flutter/material.dart';
import 'package:my_app/constants/contants.dart';
import 'package:my_app/model/Products.dart';



// ignore: camel_case_types
class addToCartAndBuyNow extends StatelessWidget {
  const addToCartAndBuyNow({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: KDefaultPadding),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: KDefaultPadding),
              height: 50,
              width: 58,
              decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.all(Radius.circular(18)),
                  border: Border.all(color: product.color)),
              child: Icon(
                Icons.add_shopping_cart,
                color: product.color,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    backgroundColor: product.color),
                child: const Text(
                  "BUY NOW",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
