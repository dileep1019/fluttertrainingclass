import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _firstnameController = TextEditingController();
  TextEditingController _lastnameController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _numberController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool isSecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: SingleChildScrollView(
        child: Container(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "first name",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _firstnameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter first name";
                    } else if (value.length < 3) {
                      return "please enter atleast 3 characters";
                    } else if (value.length > 30) {
                      return "first name should not be more than 30 characters";
                    }
                  },
                  decoration: InputDecoration(
                      //prefix: Icon(Icons.mail_outline_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: "enter your first name here",
                      prefixIcon: Icon(Icons.person_2_outlined)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "last name",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _lastnameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter last name";
                    } else if (value.length < 1) {
                      return "please enter atleat 1 character";
                    } else if (value.length > 10) {
                      return "last name should not be more 10 characters";
                    }
                  },
                  decoration: InputDecoration(
                      //prefix: Icon(Icons.mail_outline_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: "enter your last name here",
                      prefixIcon: Icon(Icons.person_2_outlined)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "user name",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _usernameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter user name";
                    } else if (value.length < 6) {
                      return "please enter atleast 6 characters";
                    } else if (value.length > 10) {
                      return "please enter not more than 10 characters";
                    }
                  },
                  decoration: InputDecoration(
                      //prefix: Icon(Icons.mail_outline_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: "enter your preffered user name here",
                      prefixIcon: Icon(Icons.person_2_outlined)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "phone number",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _numberController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "enter mobile number";
                    } else if (!numberValidate(value)) {
                      return "enter valid mobile number";
                    }
                  },
                  decoration: InputDecoration(
                      //prefix: Icon(Icons.mail_outline_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: "enter your phone number here",
                      prefixIcon: Icon(Icons.call_end_outlined)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "email address",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter email address";
                    } else if (!validateEmail(value)) {
                      return "please enter valid email";
                    }
                  },
                  decoration: InputDecoration(
                      //prefix: Icon(Icons.mail_outline_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: "enter your valid email address here",
                      prefixIcon: Icon(Icons.email_outlined)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "password",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter passsword";
                    } else if (!validPassword(value)) {
                      return "enter strong password";
                    }
                  },
                  controller: _passwordController,
                  //obscureText: true,
                  obscureText: isSecure,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            isSecure = !isSecure;
                          });
                        },
                        child: isSecure
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    hintText: "Password",
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                      onPressed: () {
                        signUpAction();
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
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void signUpAction() {
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
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(value);
  }

  bool numberValidate(String value) {
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(value);
  }
}
