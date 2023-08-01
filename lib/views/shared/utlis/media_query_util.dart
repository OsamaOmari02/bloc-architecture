
import 'package:flutter/cupertino.dart';

double getWidth(BuildContext context) => MediaQuery.of(context).size.width;
double getHeight(BuildContext context) => MediaQuery.of(context).size.height;
double aboveKeyBoard(BuildContext context) => MediaQuery.of(context).viewInsets.bottom;