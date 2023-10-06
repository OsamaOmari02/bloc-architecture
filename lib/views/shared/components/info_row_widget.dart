import 'package:flutter/material.dart';

import '../utils/media_query_util.dart';
import 'text_widget.dart';

class InfoRowWidget extends StatelessWidget {
  const InfoRowWidget({Key? key,required this.text1,required this.text2}) : super(key: key);

  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getHeight(context)*0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget(text: text1, size: getWidth(context)*0.03),
          TextWidget(text: text2, size: getWidth(context)*0.03),
        ],
      ),
    );
  }
}
