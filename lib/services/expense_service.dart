import 'dart:async';

import 'package:flutter/foundation.dart';
import '../models/expense.dart';

/// Service responsible for all business logic related to expenses.
/// 
/// Responsibilities:
/// - Add, remove, update expenses
/// - Fetch and cache expenses
/// - Analytics (e.g., total spend, category breakdown)
/// - Error handling for expense operations
class ExpenseService {
  final List<Expense> _expenses = [];
  final StreamController<List<Expense>> _expenseStream = StreamController.broadcast();

  List<Expense> get currentExpenses => List.unmodifiable(_expenses);

  Stream<List<Expense>> get expensesStream => _expenseStream.stream;

  void addExpense(Expense expense) {
    _expenses.add(expense);
    _expenseStream.add(currentExpenses);
  }

  void removeExpense(String id) {
    _expenses.removeWhere((e) => e.id == id);
    _expenseStream.add(currentExpenses);
  }

  double get totalSpent => _expenses.fold(0, (sum, e) => sum + e.amount);

  // Add more business logic as needed, e.g., analytics, filtering, etc.

  void dispose() {
    _expenseStream.close();
  }
}