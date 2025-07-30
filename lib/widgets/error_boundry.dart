import 'package:flutter/material.dart';

class ErrorBoundary extends StatefulWidget {
  final Widget child;
  const ErrorBoundary({super.key, required this.child});

  @override
  State<ErrorBoundary> createState() => _ErrorBoundaryState();
}

class _ErrorBoundaryState extends State<ErrorBoundary> {
  Object? _error;
  @override
  Widget build(BuildContext context) {
    if (_error != null) {
      return Center(child: Text('Something went wrong.'));
    }
    return widget.child;
  }

  @override
  void setState(VoidCallback fn) {
    try {
      super.setState(fn);
    } catch (e) {
      setState(() {
        _error = e;
      });
    }
  }
}