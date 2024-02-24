import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'JSON to Dart/Design.dart';
import 'JSON to Dart/ProductCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductListPage(),
    );
  }
}

class ProductListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: FutureBuilder(
        future: fetchProductData(),
        // Assuming fetchProductData() fetches your JSON data
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else if (snapshot.data == null) {
            return const Center(
              child: Text('No data available'),
            );
          } else {
            // Assuming your JSON data is stored in a CartData object named 'cartData'
            CartData cartData = snapshot.data as CartData;
            List<Product> products = cartData.products;

            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                Product product = products[index];
                return ProductCard(product: product);
              },
            );
          }
        },
      ),
    );
  }


  Future<CartData> fetchProductData() async {
    try {
      // Read the JSON file
      String jsonDataString = await rootBundle.loadString(
          'JSON to Dart/design.json');

      // Parse JSON data
      Map<String, dynamic> jsonData = jsonDecode(jsonDataString);
      CartData cartData = CartData.fromJson(jsonData['data']['cart']);

      return cartData;
    } catch (e) {
      print('Error fetching product data: $e');
      throw Exception('Failed to fetch product data');
    }
  }
}
