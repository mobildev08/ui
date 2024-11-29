import 'package:flutter/material.dart';
import 'package:ui/vegetables.dart';

class CategoriesScreen extends StatelessWidget {
    final List<Category> categories = [
  Category(
    name: 'Vegetables',
    imagePath: 'assets/images/Vegetables.png',
    itemCount: 43,
  ),
   Category(
    name: 'Fruits',
    imagePath: 'assets/images/Fruits.png',
    itemCount: 32,
  ),
   Category(
    name: 'Bread',
    imagePath: 'assets/images/Bread.png',
    itemCount: 22,
  ),
   Category(
    name: 'Sweets',
    imagePath: 'assets/images/Sweets.png',
    itemCount: 56,
  ),
   Category(
    name: 'Pasta',
    imagePath: 'assets/images/Pasta.png',
    itemCount: 10,
  ),
   Category(
    name: 'Tea',
    imagePath: 'assets/images/Drinks.png',
    itemCount: 15,
  ),
];

   CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 3 / 2,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return InkWell(
            onTap: () {
              if (category.name == 'Vegetables') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VegetablesScreen(),
                  ),
                );
              }
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      category.imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    category.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Category {
  final String name;
  final String imagePath;

  Category({
    required this.name,
    required this.imagePath,
    required int itemCount,
  });
}
