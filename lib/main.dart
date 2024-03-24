import 'package:flutter/material.dart';
import 'package:flutter_first/api_call.dart';
import 'package:flutter_first/column.dart';
import 'package:flutter_first/forgot_password.dart';
import 'package:flutter_first/form%20_validation.dart';
import 'package:flutter_first/imagePicker.dart';
import 'package:flutter_first/login.dart';
import 'package:flutter_first/login_form.dart';
import 'package:flutter_first/email_text.dart';
import 'package:flutter_first/products_list.dart';
import 'package:flutter_first/products_view_model.dart';
import 'package:flutter_first/sign_up.dart';
import 'package:flutter_first/list_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductsViewModel())
      ],
      // ignore: prefer_const_constructors
      child: MaterialApp(home: const ProductsList()
          /*routes: {
      "/LoginScreen": (context) => Login(),
      "/register": (context) => LoginForm(),
      "/forgetPassword": (context) => ForgotPassword(),
      "/botto,navigation":(context) => BottomNavigationBarExampleApp()
      "/productsList":(context) => ProductsList()
    },*/

          /* Scaffold(
      body: Container(
  
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(500),
            border: Border.all(width: 20, color: Colors.black)),

        padding: EdgeInsets.all(200),
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
        height: 500,
        width: 500,
        child: Text("This is my first design"),
      ),
    ),*/
          )));
}
