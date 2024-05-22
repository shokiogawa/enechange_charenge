import 'package:flutter/material.dart';

void showSettingDialog(
    BuildContext context,
    String title,
    String content,
    String cancelButtonText,
    String mainButtonText,
    void Function()? onCancel,
    void Function()? onMainAction) async {
  await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            ElevatedButton(
              onPressed: onCancel,
              child: Text(cancelButtonText),
            ),
            ElevatedButton(
              onPressed: onMainAction,
              child: Text(mainButtonText),
            ),
          ],
        );
      });
}
