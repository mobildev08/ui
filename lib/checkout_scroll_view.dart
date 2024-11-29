import 'package:flutter/material.dart';
import 'package:ui/constants.dart';
import 'package:ui/payment.dart';

void navigateToPayment(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const PaymentScreen()),
  );
}

class CheckoutScrollView extends StatelessWidget {
  const CheckoutScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CheckoutScreen(),
    );
  }
}

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
        backgroundColor: purple.shade100,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: purple),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('Payment method', onPressed: () {}),
            _buildDetailRow(Icons.credit_card, '**** **** **** 4747', 'CHANGE'),
            const SizedBox(height: 16),
            _buildSectionTitle('Delivery address', onPressed: () {}),
            _buildDetailRow(
                Icons.home,
                'Alexandra Smith\nCesu 31 k-2 5.st, SIA Chili\nRiga\nLV-1012\nLatvia',
                'CHANGE'),
            const SizedBox(height: 16),
            _buildSectionTitle('Delivery options', onPressed: () {}),
            _buildOptionRow(
                Icons.directions_walk, "I'll pick it up myself", false),
            _buildOptionRow(Icons.directions_bike, "By courier", false),
            _buildOptionRow(Icons.airplanemode_active, "By Drone", true),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Non-contact-delivery',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: purple,
                  ),
                ),
                Switch(
                  value: true,
                  onChanged: (bool value) {},
                  activeColor: purple,
                ),
              ],
            ),
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
            icon: Stack(
              children: [
                Icon(Icons.shopping_cart),
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: green,
                    child: Text(
                      '8',
                      style: TextStyle(fontSize: 12, color: white),
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        selectedItemColor: purple,
        unselectedItemColor: grey,
      ),
    );
  }

  Widget _buildSectionTitle(String title, {required VoidCallback onPressed}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'CHANGE',
          semanticsLabel: title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.purple,
          ),
        ),
      ],
    );
  }

  Widget _buildDetailRow(IconData icon, String details, String actionText) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: grey),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            details,
            style: TextStyle(fontSize: 16, color: grey.shade700),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            actionText,
            style: const TextStyle(color: purple),
          ),
        ),
      ],
    );
  }

  Widget _buildOptionRow(IconData icon, String text, bool selected) {
    return ListTile(
      leading: Icon(icon, color: grey),
      title: Text(
        text,
        style: TextStyle(fontSize: 16, color: grey.shade700),
      ),
      trailing: selected
          ? const Icon(Icons.check, color: purple)
          : const SizedBox.shrink(),
      subtitle: const SizedBox.shrink(),
      onTap: () {},
    );
  }
}
