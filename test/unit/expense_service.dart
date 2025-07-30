import 'package:flutter_test/flutter_test.dart';
import 'package:expense_tracker_smart_ai/services/expense_service.dart';
import 'package:expense_tracker_smart_ai/models/expense.dart';

void main() {
  group('ExpenseService', () {
    late ExpenseService service;

    setUp(() {
      service = ExpenseService();
    });

    tearDown(() {
      service.dispose();
    });

    test('adds expense', () {
      final expense = Expense(
        id: '1',
        title: 'Coffee',
        amount: 3.5,
        date: DateTime.now(),
      );
      service.addExpense(expense);
      expect(service.currentExpenses.length, 1);
      expect(service.currentExpenses.first.title, 'Coffee');
    });

    test('removes expense', () {
      final expense = Expense(
        id: '2',
        title: 'Lunch',
        amount: 12.0,
        date: DateTime.now(),
      );
      service.addExpense(expense);
      service.removeExpense('2');
      expect(service.currentExpenses.isEmpty, true);
    });

    test('calculates total spent', () {
      service.addExpense(Expense(
        id: '3',
        title: 'Dinner',
        amount: 20.0,
        date: DateTime.now(),
      ));
      service.addExpense(Expense(
        id: '4',
        title: 'Snacks',
        amount: 5.0,
        date: DateTime.now(),
      ));
      expect(service.totalSpent, 25.0);
    });
  });
}