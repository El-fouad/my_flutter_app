import 'package:flutter/material.dart';
import 'package:my_app/constants/contants.dart';
import 'package:my_app/model/Products.dart';
import 'package:my_app/pages/details/components/addToCartAndBuyNow.dart';
import 'package:my_app/pages/details/components/cartCounterAndFav.dart';
import 'package:my_app/pages/details/components/colorAndSize.dart';
import 'package:my_app/pages/details/components/description.dart';
import 'package:my_app/pages/details/components/producTitleWithImg.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: size.height,
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.32),
                //  height: 500,
                padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: KDefaultPadding,
                    right: KDefaultPadding),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Column(children: [
                  const SizedBox(height: KDefaultPadding/2,),
                  colorAndSize(product: product),
                  const SizedBox(height: KDefaultPadding/2,),
                  Description(product: product),
                  const SizedBox(height: KDefaultPadding/2,),
                  const CartCounter(),
                  const SizedBox(height: KDefaultPadding/2,),
                  addToCartAndBuyNow(product: product)
                ]),
              ),
              productTitleWithImage(product: product),
            ],
          ),
        )
      ]),
    );
  }
}
