import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:bloc_architecture/features/shared/widgets/general/text_widget.dart';
import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatelessWidget {
  const ExpansionTileWidget({
    super.key,
    required this.title,
    required this.titleSize,
    required this.children,
    this.leadingWidget,
    this.trailingWidget,
  });

  final String title;
  final double titleSize;
  final List<Widget> children;
  final Widget? leadingWidget;
  final Widget? trailingWidget;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = context.width;
    return Container(
      color: Colors.white,
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: TextWidget(
            text: title,
            size: titleSize,
            textAlign: TextAlign.start,
          ),
          childrenPadding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
          leading: leadingWidget,
          iconColor: Colors.grey,
          collapsedIconColor: Colors.grey,
          children: children,
        ),
      ),
    );
  }
}
