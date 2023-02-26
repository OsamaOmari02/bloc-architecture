import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utlis/nivagator.dart';

Padding listTileBuilder(
        {context, route, required String title, leadingIcon, trailingIcon}) =>
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(title),
        leading: Icon(leadingIcon),
        trailing: Icon(trailingIcon),
        onTap: () => route != null ? navigateToReplacement(context, route) : {},
      ),
    );
