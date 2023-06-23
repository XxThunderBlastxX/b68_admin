import 'package:flutter/material.dart';

extension StyledSnackbar on BuildContext {
  void styledSnackbar(String message, {int? statusCode}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: statusCode == null
            ? Text('Error: $message')
            : Text('Error: $statusCode - $message'),
      ),
    );
  }
}
