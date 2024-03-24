import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text(
              "OTP Verification",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(41, 41, 48, 1)),
            )
          ],
        ),
      ),
    );
  }
}
