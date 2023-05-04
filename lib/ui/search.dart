import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Material(
                  textStyle: const TextStyle(color: Colors.black87),
                  color: const Color.fromARGB(255, 214, 211, 206),
                  borderRadius: BorderRadius.circular(10),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "Enter Search KeyWord",
                        border: InputBorder.none),
                  )),
            )
          ],
        )),
      ),
    );
  }
}
