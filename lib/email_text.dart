import 'package:flutter/material.dart';

class TextEmail extends StatefulWidget {
  const TextEmail({super.key});

  @override
  State<TextEmail> createState() => _TextEmailState();
}

class _TextEmailState extends State<TextEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: "enter text to display"),
            ),
          ],
        ),
      ),
    );
  }
}
