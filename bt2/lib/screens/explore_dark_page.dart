import 'package:flutter/material.dart';

class ExploreDarkPage extends StatelessWidget {
  const ExploreDarkPage({super.key});

  final List<Map<String, String>> items = const [
    {'title': 'Lamp'},
    {'title': 'Car'},
    {'title': 'Plant'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF123456), // Tùy chỉnh tone tối
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Explore",
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 4),
              const Text("Find products easier here",
                  style: TextStyle(fontSize: 14, color: Colors.white70)),
              const SizedBox(height: 20),

              // Danh sách sản phẩm
              Expanded(
                child: ListView.separated(
                  itemCount: items.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 20),
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      height: 120,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          // Ảnh bên trái
                          Expanded(
                            flex: 2,
                            child: Center(
                              child: Icon(Icons.image,
                                  size: 48, color: Colors.white),
                            ),
                          ),
                          // Tên sản phẩm bên dưới
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 12),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(16),
                                    topLeft: Radius.circular(12),
                                  ),
                                ),
                                child: Text(item['title']!,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          )
                        ],
                      ),
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
