import 'package:bloc_architecture/views/pages/home/home_page.dart';
import 'package:bloc_architecture/views/pages/layouts/layouts.dart';
import 'package:flutter/cupertino.dart';

import '../../auth/signin/signin_page.dart';


class CheckState extends StatelessWidget {
  const CheckState({Key? key, required this.token}) : super(key: key);
  final String? token;

  @override
  Widget build(BuildContext context) {
    return const LayoutsPage();
    if (token!=null) {
      return const LayoutsPage();
    }
    return const SignInPage();
  }
}