/// Centralized app-wide constants.
///
/// - Put all color, string, key, and other constants here.
/// - Use these instead of hardcoded literals in your codebase.

import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF3A86FF);
  static const accent = Color(0xFFFFBE0B);
  static const background = Color(0xFFF8F9FA);
  static const error = Color(0xFFD90429);
  // ...add more colors as needed
}

class AppStrings {
  static const appName = 'Expense Tracker Smart AI';
  static const homeTitle = 'Expenses';
  static const addExpense = 'Add Expense';
  static const total = 'Total';
  // ...add more strings as needed
}

class AppKeys {
  static const expensesBox = 'expenses_box';
  // ...add more keys as needed
}