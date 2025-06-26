import 'package:flutter/material.dart';

class GroceryBanner extends StatelessWidget {
  const GroceryBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Center(
        child: Text(
          "Banner\nGreen Area",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
