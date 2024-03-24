import 'package:flutter/material.dart';

class ListViewExample extends StatefulWidget {
  const ListViewExample({super.key});

  @override
  State<ListViewExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  List<String> cricketers = [
    "Michael Clarke",
    "James Faulkner",
    "Aaron Finch",
    "Ryan Harris",
    "Mitchell Johnson",
    "Mitchell Marsh",
    "Peter Nevill",
    "Peter Siddle",
    "Mitchell Starc",
    "David Warner",
    "Pat Cummins",
    "Fawad Ahmed",
    "Brad Haddin",
    "Josh Hazlewood",
    "Nathan Lyon",
    "Shaun Marsh",
    "Chris Rogers",
    "Steven Smith",
    "Adam Voges",
    "Shane Watson"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: ListView.builder(
        itemCount: cricketers.length,
        itemBuilder: (context, index) {
          return Container(
            height: 40,
            color: index % 2 == 0 ? Colors.red : Colors.blue,
            margin: EdgeInsets.all(5),
            child: Text(cricketers[index]),
          );
        },
      ),
    );
  }
}
