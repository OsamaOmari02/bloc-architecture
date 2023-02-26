import 'package:flutter/material.dart';

class BottomSheet {
  void showBottomSheet({
    required BuildContext context,
    required String text,
    required Color backgroundColor,
    required height,
  }) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: height,
          color: backgroundColor,
          child: Center(
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              children: <Widget>[
                Text(text),
              ],
            ),
          ),
        );
      },
    );
  }
}
