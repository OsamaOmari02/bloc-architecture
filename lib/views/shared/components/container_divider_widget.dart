import 'package:bloc_architecture/business_logic/providers/switches_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../themes/light_theme.dart';
import '../utlis/media_query_util.dart';

class ContainerDividerWidget extends StatelessWidget {
  const ContainerDividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: context.watch<SwitchesProvider>().isDark ? lightFifthColor.withOpacity(0.2) : lightFifthColor.withOpacity(0.5),
        height: getHeight(context) * 0.007);
  }
}
