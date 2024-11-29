import 'package:flutter/material.dart';


class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PaymentScreen(),
    );
  }
}

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Credit / Debit card'),
        backgroundColor: Colors.purple.shade50,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.purple),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCardPreview(),
            const SizedBox(height: 24),
            _buildTextField(label: 'Name on card', hintText: 'Alexandra Smith'),
            const SizedBox(height: 16),
            _buildCardNumberField(),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: _buildTextField(label: 'Expiry date', hintText: '07/21'),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _buildTextField(label: 'CVC', hintText: '474', isCvc: true),
                ),
              ],
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {},
              child: const Center(
                child: Text(
                  'USE THIS CARD',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCardPreview() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: [Colors.purple.shade200, Colors.blue.shade200],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '4747 4747 4747 4747',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Icon(Icons.credit_card, color: Colors.orange, size: 36),
            ],
          ),
          SizedBox(height: 16),
          Text(
            'ALEXANDRA SMITH',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8),
          Text(
            '07/21',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({required String label, required String hintText, bool isCvc = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: isCvc ? const Icon(Icons.credit_card, color: Colors.orange) : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
          keyboardType: isCvc ? TextInputType.number : TextInputType.text,
        ),
      ],
    );
  }

  Widget _buildCardNumberField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Card number',
          style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: '4747 4747 4747 4747',
            suffixIcon: const Icon(Icons.credit_card, color: Colors.orange),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
          keyboardType: TextInputType.number,
        ),
      ],
    );
  }
void navigateToPayment(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const PaymentScreen()),
  );
}

}
