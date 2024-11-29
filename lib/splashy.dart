// ignore_for_file: use_build_context_synchronously, library_private_types_in_public_api

import 'package:flutter/material.dart';

  void navigateToCategories(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const CategoriesScreen()),
  );
}

class Splashy extends StatelessWidget {
  const Splashy({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    
    // Navigate to CategoriesScreen after a 3-second delay
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const CategoriesScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.green.shade200,
              child: const Icon(Icons.delivery_dining, color: Colors.white, size: 40),
            ),
            const SizedBox(height: 40),
            const Text(
              'Non-Contact Deliveries',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.purple),
            ),
            const SizedBox(height: 16),
            const Text(
              'When placing an order, select the option\n"Contactless delivery" and the courier will\nleave your order at the door.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const CategoriesScreen()),
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text('ORDER NOW'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const CategoriesScreen()),
                );
              },
              child: const Text('DISMISS', style: TextStyle(color: Colors.grey)),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        backgroundColor: Colors.purple.shade50,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _buildCategoryCard('Vegetables', 'assets/vegetables.png'),
            _buildCategoryCard('Fruits', 'assets/fruits.png'),
            _buildCategoryCard('Bread', 'assets/bread.png'),
            _buildCategoryCard('Sweets', 'assets/sweets.png'),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(String title, String imagePath) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Image.asset(imagePath, height: 80, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

}
