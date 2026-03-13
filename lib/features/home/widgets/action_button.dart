import 'package:flutter/material.dart';

Widget buildActionButton(IconData icon, String label) {
  return Expanded(
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
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