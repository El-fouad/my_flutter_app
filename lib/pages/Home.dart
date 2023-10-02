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
        leading: GestureDetector(
          onTap: () => {},
          child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 241, 223, 223),
                borderRadius: BorderRadius.circular(10)),
            child: const Text(
              "<",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20,
                  fontWeight: FontWeight.w900),
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () => {},
            child: Container(
              margin: const EdgeInsets.all(10),
              width: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 223, 223),
                  borderRadius: BorderRadius.circular(10)),
              child: const Text("==",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                      fontWeight: FontWeight.w900)),
            ),
          ),
        ],
      ),
    );
  }
}
