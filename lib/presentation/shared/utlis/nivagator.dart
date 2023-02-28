
import 'package:flutter/material.dart';

void navigateToPush(context, route) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => route));

void navigateToReplacement(context, route) => Navigator.pushReplacement(
    context, MaterialPageRoute(builder: (context) => route));

void navigatePop(context) => Navigator.pop(context);