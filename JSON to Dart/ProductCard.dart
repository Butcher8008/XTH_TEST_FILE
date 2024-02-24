
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Design.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
        leading: Image.network(
          product.thumb,
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
        title: Text(product.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Price: ${product.priceFormatted}'),
            Text('Quantity: ${product.quantity}'),
            // Add more fields as needed
          ],
        ),
        // Add onTap if you want to handle tap events
      ),
    );
  }
}
