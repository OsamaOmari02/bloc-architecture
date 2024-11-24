import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';

class ContainerDividerWidget extends StatelessWidget {
  const ContainerDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey.withOpacity(0.5), height: context.height * 0.007);
  }
}
