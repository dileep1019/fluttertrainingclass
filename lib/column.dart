import 'package:flutter/material.dart';

class ColumnWidget extends StatefulWidget {
  const ColumnWidget({super.key});

  @override
  State<ColumnWidget> createState() => _ColumnWidgetState();
}

class _ColumnWidgetState extends State<ColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column Widget"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.yellow,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              )
            ]),
      ),
    );
  }
}
