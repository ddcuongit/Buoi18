import 'package:flutter/material.dart';

class BestSellerTile extends StatelessWidget {
  final String title;
  final double rating;
  final VoidCallback onTap;

  const BestSellerTile({
    super.key,
    required this.title,
    required this.rating,
    required this.onTap,
  });

  List<Widget> buildStarRow(double rating, {double size = 14}) {
    List<Widget> stars = [];
    int fullStars = rating.floor();
    bool hasHalf = (rating - fullStars) >= 0.5;

    for (int i = 0; i < fullStars; i++) {
      stars.add(Icon(Icons.star, size: size, color: Colors.orange));
    }

    if (hasHalf) {
      stars.add(Icon(Icons.star_half, size: size, color: Colors.orange));
    }

    while (stars.length < 5) {
      stars.add(Icon(Icons.star_border, size: size, color: Colors.orange));
    }

    return stars;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 100,
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.image, size: 40, color: Colors.white70),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            FittedBox(
              child: Row(
                children: [
                  ...buildStarRow(rating, size: 12),
                  const SizedBox(width: 4),
                  Text(
                    rating.toStringAsFixed(1),
                    style: const TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
