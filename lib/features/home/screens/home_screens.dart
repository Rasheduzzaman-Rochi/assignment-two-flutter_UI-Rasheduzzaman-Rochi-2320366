import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 15.0),
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xFF4B39EF),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 3.0,
                spreadRadius: 2.0,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Total Balance',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  Icon(
                    Icons.account_balance_wallet_outlined,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(height: 6),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: '\$8,945',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '.32',
                      style: TextStyle(
                        color: Color.fromARGB(228, 255, 255, 255),
                        fontSize: 16, // Smaller font size for decimals
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Divider(color: Colors.white24, thickness: 0.6, height: 1),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Savings: \$5,500',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Last 30 days: +\$300 →',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 19),
        Row(
          children: [
            _buildActionButton(Icons.import_export, 'Transfer'),
            const SizedBox(width: 12),
            _buildActionButton(Icons.info_outline, 'Pay Bills'),
            const SizedBox(width: 12),
            _buildActionButton(Icons.link, 'Invest'),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Recent Transactions',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: const Text(
                'View All',
                style: TextStyle(fontSize: 13, color: Color(0xFF4B39EF)),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        _buildTransactionTile(
          Icons.movie,
          'Netflix Subscription',
          'Entertainment • Today',
          '\$19.99',
          Colors.red,
        ),
        _buildTransactionTile(
          Icons.coffee,
          'Coffee Shop',
          'Food & Drink • Today',
          '\$4.50',
          Colors.red,
        ),
        _buildTransactionTile(
          Icons.work,
          'Salary Deposit',
          'Income • Yesterday',
          '+\$3500.00',
          Colors.green,
        ),
        _buildTransactionTile(
          Icons.local_grocery_store,
          'Grocery Store',
          'Shopping • Yesterday',
          '\$55.80',
          Colors.red,
        ),
        _buildTransactionTile(
          Icons.local_grocery_store,
          'Amazon Purchase',
          'Shopping • 2 days ago',
          '\$120.45',
          Colors.red,
        ),
      ],
    );
  }

  Widget _buildActionButton(IconData icon, String label) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              blurRadius: 5.0,
              spreadRadius: 2.0,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Color(0xFFEEF0FF),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: const Color(0xFF4B39EF), size: 28),
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFF333333),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactionTile(
    IconData icon,
    String title,
    String subtitle,
    String amount,
    Color amountColor,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            spreadRadius: 2.0,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ListTile(
        dense: true,
        visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 4.0,
        ),
        leading: Container(
          width: 38,
          height: 38,
          decoration: const BoxDecoration(
            color: Color(0xFFF1F4F8),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: const Color(0xFF57636C), size: 20),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Color(0xFF333333),
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
        trailing: Text(
          amount,
          style: TextStyle(
            color: amountColor,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}