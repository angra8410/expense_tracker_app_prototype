import 'package:flutter/material.dart';
import '../constants.dart';
import '../widgets/expense_list.dart';

/// Main screen showing user's expenses.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.homeTitle),
      ),
      body: const ExpenseList(),
      floatingActionButton: FloatingActionButton(
        tooltip: AppStrings.addExpense,
        onPressed: () {
          // TODO: Show add expense form
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}