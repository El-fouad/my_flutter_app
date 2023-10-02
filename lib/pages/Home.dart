// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BreakFast",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0.0,
        leading: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(10)),
        ),
        actions: <Widget> [
          Container(
            margin: const EdgeInsets.all(50),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 204, 21, 21), borderRadius: BorderRadius.circular(10)
              ),
          ),
        ],
      ),
    );
  }
}
