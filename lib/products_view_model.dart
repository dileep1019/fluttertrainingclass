import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first/products_model.dart';

class ProductsViewModel with ChangeNotifier {
  List<Products> productsList = [];
  void getProductsFromServer() async {
    

    final baseUrl = "https://dummyjson.com/";
    final endPoint = "products";
    final requesturl = baseUrl + endPoint;
    final Dio dioObject = Dio(); 
    final response = await dioObject.get(requesturl); 
    print(response.statusCode);  

    //convert the json to model class

    
    final prodcutsModel = ProductDataModel.fromJson(response.data);
    productsList = prodcutsModel.products ?? [];
    notifyListeners();
  }
}
