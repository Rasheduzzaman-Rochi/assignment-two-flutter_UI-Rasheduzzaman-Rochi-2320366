import 'package:flutter/material.dart';
import '../widgets/build_progess_row.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        const Text(
          'Monthly Spending Report',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.09),
                blurRadius: 15.0,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Total Expenses (Last 30 days)',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  '-\$1270.00',
                  style: TextStyle(
                    color: Color.fromARGB(255, 211, 21, 7),
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: const [
                    Icon(Icons.arrow_upward, color: Colors.red, size: 16),
                    Text(
                      ' Up 12% from last month',
                      style: TextStyle(color: Colors.red, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.09),
                blurRadius: 15.0,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Spending Breakdown',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                buildProgressRow(
                  'Food & Drink',
                  '\$450.00 (35%)',
                  0.35,
                  Colors.red,
                ),
                buildProgressRow(
                  'Shopping',
                  '\$320.00 (25%)',
                  0.25,
                  const Color.fromARGB(255, 62, 68, 236),
                ),
                buildProgressRow(
                  'Housing',
                  '\$280.00 (22%)',
                  0.22,
                  Colors.orange,
                ),
                buildProgressRow(
                  'Transport',
                  '\$150.00 (12%)',
                  0.12,
                  Colors.green,
                ),
                buildProgressRow('Others', '\$70.00 (6%)', 0.06, Colors.grey),
              ],
            ),
          ),
        ),
      ],
    );
  }
}