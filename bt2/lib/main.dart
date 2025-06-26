import 'package:flutter/material.dart';
import 'screens/explore_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore Demo',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const ExplorePage(),
    );
  }
}
