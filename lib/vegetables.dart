// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:ui/constants.dart';
import 'package:ui/item.dart';

void navigateToItem(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ItemScreen()),
  );
}

class VegetablesCard extends StatelessWidget {
  const VegetablesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: VegetablesScreen(),
    );
  }
}

class VegetablesScreen extends StatelessWidget {
  const VegetablesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vegetables'),
        backgroundColor: purple.shade100,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: purple),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Vegetables',
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold, color: purple),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search, color: grey),
                  filled: true,
                  fillColor: grey.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  )),
            ),
            const SizedBox(height: 16),
            Expanded(
                child: ListView(
              children: [
                _buildVegetableItem('Boston Lettuce', '1.10 € / piece',
                    'assets/boston_lettuce.jpg'),
                _buildVegetableItem('Purple Cauliflower', '1.85 € / kg',
                    'assets/purple_cauliflower.jpg'),
                _buildVegetableItem(
                    'Savoy Cabbage', '1.45 € / kg', 'assets/savoy_cabbage.jpg'),
              ],
            ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          )
        ],
        selectedItemColor: purple,
        unselectedItemColor: grey,
      ),
    );
  }

  Widget _buildCategoryShip(String label, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Chip(
        label: Text(label),
        backgroundColor: isSelected ? purple.shade100 : grey.shade200,
        labelStyle: TextStyle(color: isSelected ? purple : grey),
      ),
    );
  }

  Widget _buildVegetableItem(String name, String price, String imageUrl) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(8),
        leading:
            Image.asset(imageUrl, fit: BoxFit.cover, width: 60, height: 60),
            title: Text(
              name, style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(price),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(icon: const Icon(Icons.favorite_border, color: grey),
                onPressed: (){},
                ),
                IconButton(icon: const Icon(Icons.shopping_cart, color: green),
                onPressed: (){},
                )
              ],
            ),
      ),
    );
  }
}
