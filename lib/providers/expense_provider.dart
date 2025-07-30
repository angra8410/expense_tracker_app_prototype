import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/expense_service.dart';

final expenseServiceProvider = Provider<ExpenseService>((ref) {
  return ExpenseService();
});