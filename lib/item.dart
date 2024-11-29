import 'package:flutter/material.dart';
import 'package:ui/checkout_scroll_view.dart';
import 'package:ui/constants.dart';

  void navigateToCheckout(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const CheckoutScreen()),
  );
}

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ItemDetailScreen(),
    );
  }
}

class ItemDetailScreen extends StatelessWidget {
  const ItemDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item'),
        backgroundColor: purple.shade100,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: purple,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage('assets/boston_lettuce.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Boston Lettuce',
                style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold, color: purple),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    '1.10 € / piece',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: grey.shade700),
                  ),
                  const SizedBox(width: 16),
                  const Text(
                    '~ 150gr / piece',
                    style: TextStyle(fontSize: 16, color: green),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'Spain',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: grey.shade700,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Lettuce is an annual plant of the daisy family, After a case. It is most often grown as a leaf vegetable, '
                'but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in '
                'other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.',
                style: TextStyle(
                  fontSize: 16,
                  color: grey.shade600,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.favorite_border, color: grey),
                    onPressed: () {},
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                    ),
                    icon: const Icon(Icons.shopping_cart, color: white),
                    label: const Text(
                      'ADD TO CART',
                      style: TextStyle(color: white),
                    ),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}
