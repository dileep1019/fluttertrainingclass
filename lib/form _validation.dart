import 'package:flutter/material.dart';

class FormValidation extends StatefulWidget {
  const FormValidation({super.key});

  @override
  State<FormValidation> createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
            alignment: Alignment.center,
            child: Text(
              "Form Validation",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
            )),
      ),
      body: Container(
        child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email Address",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter Email";
                    } else if (!validPassword(value)) {
                      return "Please Enter Valid Password";
                    }
                  },
                  decoration: InputDecoration(
                      //prefix: Icon(Icons.mail_outline_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: "hello@example.com",
                      prefixIcon: Icon(Icons.mail_outline_outlined)),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Password",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter Password";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      hintText: "Password",
                      prefixIcon: Icon(Icons.password_outlined)),
                ),
                SizedBox(
                  height: 16,
                ),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                      onPressed: () {
                        loginAction();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(27, 84, 245, 1),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        width: 280,
                        height: 50,
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      )),
                ),
              ],
            )),
      ),
    );
  }

  void loginAction() {
    final isValidate = _formKey.currentState!.validate();
    if (isValidate) {
      print("form is validate");
    }
  }

  bool validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    return (!regex.hasMatch(value)) ? false : true;
  }

  bool validPassword(String value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
        RegExp regex = new RegExp(pattern);
        return (!regex.hasMatch(value)) ? false : true;
  }
}
