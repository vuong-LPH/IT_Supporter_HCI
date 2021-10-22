import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum DialogsAction { yes, cancel }

class AlertDialogs2 {
  static Future<DialogsAction> yesCancelDialog(
    BuildContext context,
    String title,
    String body,
  ) async {
    final action = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(body),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.of(context).pop(DialogsAction.cancel),
              child: Text(
                'Không hoàn thành',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
            FlatButton(
              onPressed: () => Navigator.of(context).pop(DialogsAction.yes),
              child: Text(
                'Hoàn thành',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.w700),
              ),
            )
          ],
        );
      },
    );
    return (action != null) ? action : DialogsAction.cancel;
  }
}
