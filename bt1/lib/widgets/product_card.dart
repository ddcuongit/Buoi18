import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final int price;

  const ProductCard({super.key, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 2,
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          color: Colors.green,
          child: const Icon(Icons.image, color: Colors.white), // Placeholder
        ),
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("1000 ready stock"),
            const SizedBox(height: 4),
            Text(
              "\$$price",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
        trailing: const Icon(Icons.favorite_border),
      ),
    );
  }
}
