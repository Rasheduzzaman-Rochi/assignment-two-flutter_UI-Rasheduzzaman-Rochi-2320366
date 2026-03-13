import 'package:flutter/material.dart';

Widget buildTransactionTile(
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
        width: 32,
        height: 32,
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