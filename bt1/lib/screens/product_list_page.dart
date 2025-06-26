import 'package:flutter/material.dart';
import '../widgets/product_card.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {'name': 'Orange', 'price': 15},
      {'name': 'Apple', 'price': 20},
      {'name': 'Banana', 'price': 5},
      {'name': 'Mango', 'price': 15},
      {'name': 'Orange', 'price': 10},
    ];

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () => Navigator.pop(context)),
        title: const Text('Products'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final p = products[index];
          return ProductCard(name: p['name'].toString(), price: p['price'] as int);
        },
      ),
    );
  }
}
