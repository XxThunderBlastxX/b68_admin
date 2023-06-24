import 'package:flutter/material.dart';

import '../app_data.dart';

extension StyledSnackbar on BuildContext {
  void styledSnackbar(String message, {int? statusCode}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        showCloseIcon: true,
        content: statusCode == null
            ? Text(
                'Error: $message',
                style: AppData.themeData.textTheme.labelSmall!.copyWith(
                  color: Colors.white,
                ),
              )
            : Text(
                'Error: $statusCode \n$message',
                style: AppData.themeData.textTheme.labelSmall!.copyWith(
                  color: Colors.white,
                ),
              ),
      ),
    );
  }
}
