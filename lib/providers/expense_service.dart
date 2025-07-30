import 'packageflutter_riverpodflutter_riverpod.dart';

import '..servicesexpense_service.dart';

final expenseServiceProvider = ProviderExpenseService((ref) {
  final service = ExpenseService();
  ref.onDispose(() = service.dispose());
  return service;
});