import 'package:bt2/screens/explore_dark_page.dart';
import 'package:flutter/material.dart';
import '../widgets/explore/search_bar.dart';
import '../widgets/explore/banner_carousel.dart';
import '../widgets/explore/category_icon.dart';
import '../widgets/explore/best_seller_tile.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  final List<Map<String, dynamic>> categories = const [
    {'label': 'Music', 'icon': Icons.music_note},
    {'label': 'Property', 'icon': Icons.home},
    {'label': 'Game', 'icon': Icons.videogame_asset},
    {'label': 'Gadget', 'icon': Icons.devices},
    {'label': 'Electronic', 'icon': Icons.electrical_services},
    {'label': 'Book', 'icon': Icons.book},
    {'label': 'Sport', 'icon': Icons.sports},
    {'label': 'Fashion', 'icon': Icons.checkroom},
  ];

  final List<Map<String, dynamic>> bestSellers = const [
    {'title': 'Plant', 'rating': 5.0},
    {'title': 'Lamp', 'rating': 5.0},
    {'title': 'Chair', 'rating': 5.0},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Explore',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              const Text(
                'Find products easier here',
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              const SizedBox(height: 20),

              // search + filter icon
              Row(
                children: const [
                  Expanded(child: SearchPage()),
                  SizedBox(width: 12),
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: Icon(Icons.filter_list, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // banner carousel
              // const BannerCarousel(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ExploreDarkPage()),
                  );
                },
                child: const BannerCarousel(),
              ),
              const SizedBox(height: 24),

              // categories grid
              SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 16),
                  itemBuilder: (context, i) {
                    final c = categories[i];
                    return CategoryIcon(
                      icon: c['icon'] as IconData,
                      label: c['label'] as String,
                      onTap: () {
                        // TODO: navigate or filter by category
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),

              // Best Seller header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Best Seller',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(fontSize: 14, color: Colors.orange),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // best seller list
              SizedBox(
                height: 150,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: bestSellers.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 16),
                  itemBuilder: (context, i) {
                    final b = bestSellers[i];
                    return BestSellerTile(
                      title: b['title'] as String,
                      rating: b['rating'] as double,
                      onTap: () {
                        // TODO: show detail
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
