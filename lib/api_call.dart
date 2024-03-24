import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiCall extends StatefulWidget {
  const ApiCall({super.key});

  @override
  State<ApiCall> createState() => _ApiCallState();
}

class _ApiCallState extends State<ApiCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API CALL"),
      ),
      body: Container(
        child: TextButton(
            child: Text("Call Api"),
            onPressed: () {
              callApi();
            }),
      ),
    );
  }

  void callApi() async {
    final baseUrl = "https://jsonplaceholder.typicode.com/";
    final endPoint = "albums";
    final requesturl = baseUrl + endPoint;
    final Dio dioObject = Dio(); //Dio object creation
    final response = await dioObject.get(requesturl); // call the api
    print(response.statusCode);
    print(response.data);
  }
}
