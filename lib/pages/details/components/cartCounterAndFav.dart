// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:my_app/constants/contants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            buildOutLineButon(
                press: () {
                  numItems > 1
                      ? setState(() {
                          numItems--;
                        })
                      : null;
                },
                icon: Icons.remove),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: KDefaultPadding / 2),
              child: Text(
                numItems.toString().padLeft(2, "0"),
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            buildOutLineButon(
                press: () {
                  setState(() {
                    numItems++;
                  });
                },
                icon: Icons.add),
          ],
        ),
        Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Colors.redAccent),
          child: const Icon(
            Icons.favorite_sharp,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

SizedBox buildOutLineButon({VoidCallback? press, IconData? icon}) {
  return SizedBox(
    height: 32,
    width: 40,
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(13))),
      ),
      onPressed: press,
      child: Icon(icon),
    ),
  );
}
