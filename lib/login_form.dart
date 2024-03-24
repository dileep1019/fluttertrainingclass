import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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
                  "Let’s Get Started!",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Name",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      hintText: "Name"),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Mobile Number",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    hintText: "Mobile number",
                  ),
                ),
                SizedBox(
                  height: 10,
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
                        borderRadius: BorderRadius.circular(8)),
                    hintText: "hello@gmail.com",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Batch Number",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    hintText: "Batch Number",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Set Password",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    hintText: "Set Password",
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
                          borderRadius: BorderRadius.circular(100)),
                      width: 280,
                      height: 50,
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Have an account",
                        style: TextStyle(fontSize: 16),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(27, 84, 245, 1)),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
