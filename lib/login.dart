import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                "Welcome back",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(41, 41, 48, 1)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "Welcome back. Enter your credentials to access your account",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(138, 144, 162, 1),
                  )),
              SizedBox(
                height: 18,
              ),
              Text(
                "Email Address",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(41, 41, 48, 1)),
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
              Text(
                "Password",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(41, 41, 48, 1)),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: "Password",
                    suffixIcon: Icon(Icons.remove_red_eye)),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(27, 84, 245, 1),
                    ),
                  ),
                ),
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
                    height: 50,
                    width: 280,
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "New Here?",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Create an account",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(27, 84, 245, 1),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
