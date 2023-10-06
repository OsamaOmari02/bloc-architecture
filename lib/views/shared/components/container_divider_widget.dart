import 'package:flutter/material.dart';

import '../themes/light_theme.dart';
import '../utils/media_query_util.dart';

class ContainerDividerWidget extends StatelessWidget {
  const ContainerDividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: lightFifthColor.withOpacity(0.5),
        height: getHeight(context) * 0.007);
  }
}
