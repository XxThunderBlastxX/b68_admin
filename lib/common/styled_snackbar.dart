import 'package:flutter/material.dart';

import '../app_theme.dart';

extension StyledSnackbar on BuildContext {
  void styledSnackbar(String message, {int? statusCode}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        showCloseIcon: true,
        content: statusCode == null
            ? Text(
                'Error: $message',
                style: AppTheme.themeData.textTheme.labelSmall!.copyWith(
                  color: Colors.white,
                ),
              )
            : Text(
                'Error: $statusCode \n$message',
                style: AppTheme.themeData.textTheme.labelSmall!.copyWith(
                  color: Colors.white,
                ),
              ),
      ),
    );
  }
}
