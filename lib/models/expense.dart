import 'package:flutter/foundation.dart';

/// Model for a single expense entry.
class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final String? category;

  Expense({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
    this.category,
  });

  // Add serialization, deserialization, and validation as needed.
}