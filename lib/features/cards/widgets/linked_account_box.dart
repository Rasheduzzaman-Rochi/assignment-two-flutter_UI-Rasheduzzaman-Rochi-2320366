import 'package:flutter/material.dart';

Widget linkedAccountBox(
  String leadingText,
  String title,
  String amount,
) {
  return Container(
    margin: const EdgeInsets.only(bottom: 12.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: Colors.grey.shade200, width: 1.0),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.02),
          spreadRadius: 0,
          blurRadius: 10,
          offset: const Offset(0, 2),
        ),
      ],
    ),
    child: ListTile(
      dense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 6.0,
      ),
      leading: Container(
        width: 36,
        height: 36,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Color(0xFFE5EDFF), 
          shape: BoxShape.circle,
        ),
        child: Text(
          leadingText,
          style: const TextStyle(
            color: Color(0xFF2563EB),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Color(0xFF111827),
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 4.0),
        child: Text(
          amount,
          style: const TextStyle(
            fontSize: 13, 
            color: Color(0xFF6B7280),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward,
        color: Color(0xFF9CA3AF),
        size: 20,
      ),
    ),
  );
}