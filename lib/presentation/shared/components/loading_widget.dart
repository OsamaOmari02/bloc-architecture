import 'package:flutter/material.dart';
import 'package:shifacom/core/utlis/media_query.dart';


class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getHeight(context)*0.02),
      child: const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}