// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(children: [
        Container(
          margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.11),
                blurRadius: 40,
                spreadRadius: 0.0)
          ]),
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 24.0,
                ),
                suffixIcon: Container(
                    width: 100,
                    child: const IntrinsicHeight(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 0),
                            child: Icon(
                              Icons.filter_list_outlined,
                              color: Color.fromARGB(255, 0, 0, 0),
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),
                    )),
                contentPadding: const EdgeInsets.all(15),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none)),
          ),
        )
      ]),
    );
  }

  AppBar appBar() {
    return AppBar(
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
    );
  }
}
