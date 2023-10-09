// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:my_app/constants/contants.dart';
import 'package:my_app/pages/home/components/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: buildAppBar(),
    body: const Body(),
    
  );}

  AppBar buildAppBar() {
    return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: const Icon(
        color: Colors.black38,
        Icons.arrow_back,
      ),
      onPressed: () {},
    ),
    actions: <Widget> [
      IconButton(onPressed: () {},
       icon: const Icon(
        color:Colors.black38,
        Icons.search
       )),
      IconButton(onPressed: () {},
       icon: const Icon(
        color:Colors.black38,
        Icons.add_shopping_cart
       )),
       const SizedBox(width: KDefaultPadding /2,)
    ],
  );
  }
}
