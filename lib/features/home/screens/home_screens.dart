import 'package:flutter/material.dart';
import '../widgets/action_button.dart';
import '../widgets/transaction_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 15.0),
      children: [
        Container(
          padding: const EdgeInsets.all(16),
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
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                  Icon(
                    Icons.account_balance_wallet_outlined,
                    color: Colors.white,
                    size: 20,
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
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '.32',
                      style: TextStyle(
                        color: Color.fromARGB(228, 255, 255, 255),
                        fontSize: 14, // Smaller font size for decimals
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 13),
              const Divider(color: Colors.white24, thickness: 0.6, height: 1),
              const SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Savings: \$5,500',
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                  Text(
                    'Last 30 days: +\$300 →',
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 19),
        Row(
          children: [
            buildActionButton(Icons.import_export, 'Transfer'),
            const SizedBox(width: 12),
            buildActionButton(Icons.info_outline, 'Pay Bills'),
            const SizedBox(width: 12),
            buildActionButton(Icons.link, 'Invest'),
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
        buildTransactionTile(
          Icons.movie,
          'Netflix Subscription',
          'Entertainment • Today',
          '\$19.99',
          Colors.red,
        ),
        buildTransactionTile(
          Icons.coffee,
          'Coffee Shop',
          'Food & Drink • Today',
          '\$4.50',
          Colors.red,
        ),
        buildTransactionTile(
          Icons.work,
          'Salary Deposit',
          'Income • Yesterday',
          '+\$3500.00',
          Colors.green,
        ),
        buildTransactionTile(
          Icons.local_grocery_store,
          'Grocery Store',
          'Shopping • Yesterday',
          '\$55.80',
          Colors.red,
        ),
        buildTransactionTile(
          Icons.local_grocery_store,
          'Amazon Purchase',
          'Shopping • 2 days ago',
          '\$120.45',
          Colors.red,
        ),
      ],
    );
  }
}