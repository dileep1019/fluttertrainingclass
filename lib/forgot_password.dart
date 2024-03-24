import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 72,
              ),
              Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(41, 41, 48, 1),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Enter the email associated with your account and we will send an authentication code to reset you password",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Email Address",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: "hello@example.com"),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(27, 84, 245, 1),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    width: 280,
                    height: 50,
                    child: Text(
                      "Submit",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
