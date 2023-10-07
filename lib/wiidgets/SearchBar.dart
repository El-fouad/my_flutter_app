import 'package:flutter/material.dart';


class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: const Color.fromARGB(255, 236, 14, 14).withOpacity(0.11),
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
              suffixIcon:const SizedBox (
                  width: 100,
                  child:  IntrinsicHeight(
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
      );
  }
}