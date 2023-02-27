// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class BookList extends StatefulWidget {
  const BookList({Key? key}) : super(key: key);

  @override
  State<BookList> createState() => _BookListState();
}

class _BookListState extends State<BookList> {
  String technology = '';
  String semester = "";
  String Shift = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Book List"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          DropdownButtonFormField(
            decoration: InputDecoration(
              hintText: "Select Technology",
              enabledBorder: OutlineInputBorder(
                //<-- SEE HERE
                borderSide: BorderSide(color: Colors.grey.shade600, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                //<-- SEE HERE
                borderSide: BorderSide(color: Colors.grey.shade600, width: 2),
              ),
              filled: true,
              fillColor: Colors.white,
            ),
            dropdownColor: Colors.white,
            // value: dropdownValue,
            onChanged: (String? newValue) {
              setState(() {
                technology = newValue!;
              });
            },
            items: <String>[
              'Computer Technology',
              'Acchitecthure & Interior Design Technology',
              'Electromedial Technology',
              'Refrigeration & Air-conditioning Technology',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: const TextStyle(
                      fontSize: 14, overflow: TextOverflow.ellipsis),
                ),
              );
            }).toList(),
          ),
          const SizedBox(
            height: 20,
          ),
          Visibility(
            visible: (technology == "") ? false : true,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                hintText: "Select Semester",
                enabledBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(color: Colors.grey.shade600, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(color: Colors.grey.shade600, width: 2),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              dropdownColor: Colors.white,
              // value: dropdownValue,
              onChanged: (String? newValue) {
                setState(() {
                  semester = newValue!;
                });
              },
              items: <String>[
                '1st Semester',
                '2n Semester',
                '3rd Semester',
                '4th Semester',
                '5th Semester',
                '6th Semester',
                '7th Semester',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  onTap: () {},
                  child: Text(
                    value,
                    style: const TextStyle(
                        fontSize: 14, overflow: TextOverflow.ellipsis),
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Visibility(
            visible: (semester == "") ? false : true,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                hintText: "Select Shift",
                enabledBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(color: Colors.grey.shade600, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(color: Colors.grey.shade600, width: 2),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              dropdownColor: Colors.white,
              // value: dropdownValue,
              onChanged: (String? newValue) {
                setState(() {
                  Shift = newValue!;
                });
              },
              items: <String>[
                '1st Shift',
                '2nd Shift',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(
                        fontSize: 14, overflow: TextOverflow.ellipsis),
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Visibility(
              visible: (Shift == "") ? false : true,
              child: Container(
                  width: double.infinity,
                  height: 100,
                  padding: const EdgeInsets.all(15),
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("View"))))
        ]),
      ),
    );
  }
}
