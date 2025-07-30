import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app.dart';
// import your logger or sentry/crashlytics here

void main() {
  // Catch Flutter errors.
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    // Send to logger or crash reporting, e.g. Sentry
    // Sentry.captureException(details.exception, stackTrace: details.stack);
    // Or use print(details.exceptionAsString());
  };

  // Catch all Dart errors (outside Flutter widgets)
  runZonedGuarded(() {
    runApp(const ProviderScope(child: ExpenseTrackerApp()));
  }, (error, stackTrace) {
    // Send to logger or crash reporting
    // print(error);
    // Sentry.captureException(error, stackTrace: stackTrace);
  });
}