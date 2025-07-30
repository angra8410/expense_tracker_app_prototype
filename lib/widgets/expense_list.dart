import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/expense_provider.dart';
import '../models/expense.dart';

/// Widget for displaying a list of expenses.
/// Uses Riverpod for state management.
class ExpenseList extends ConsumerWidget {
  const ExpenseList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final expenseService = ref.watch(expenseServiceProvider);
    final expenses = expenseService.currentExpenses;

    if (expenses.isEmpty) {
      return const Center(
        child: Text('No expenses yet.'),
      );
    }

    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) {
        final Expense expense = expenses[index];
        return ListTile(
          key: ValueKey(expense.id),
          title: Text(expense.title),
          subtitle: Text('${expense.amount}'),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => expenseService.removeExpense(expense.id),
            tooltip: 'Delete Expense',
          ),
        );
      },
    );
  }
}