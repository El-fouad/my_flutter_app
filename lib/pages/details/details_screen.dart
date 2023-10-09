import 'package:flutter/material.dart';
import 'package:my_app/model/Products.dart';

class DetailsSreen extends StatelessWidget {

  final Product product;

  const DetailsSreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          onPressed: () =>Navigator.pop(context),
          icon: const Icon(Icons.arrow_back), 
          
        ),
      ),
    );
  }
}