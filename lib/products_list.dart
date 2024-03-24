import 'package:flutter/material.dart';
import 'package:flutter_first/products_view_model.dart';
import 'package:provider/provider.dart';
import 'dart:js';



class ProductsList extends StatefulWidget {
  const ProductsList({Key? key}) : super(key: key);

  @override
  _ProductsListState createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  @override
  Widget build(BuildContext context) {
    final productsViewModel = Provider.of<ProductsViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products List'),
      ),
      body: ListView.builder(
        itemCount: productsViewModel.productsList.length,
        itemBuilder: (context, index) {
          final product = productsViewModel.productsList[index];
          return Card(
              child: Column(
            children: [
              Text(product.title ?? ""),
              Text("${product.price}"),
              Image.network(product.thumbnail ?? "")
            ],
          ));
        },
      ),
    );
  }

  @override
  void initState() {
   
    super.initState();
    //context.read<ProductsViewMode>().getProductsFromServer();
      Provider.of<ProductsViewModel>(context as BuildContext,listen: false).getProductsFromServer();
  }
}
