import 'package:bloc_architecture/features/shared/cubits/internet_connection/internet_connection_cubit.dart';
import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:bloc_architecture/features/layouts/views/widgets/bottom_nav_bar_widget.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:bloc_architecture/features/shared/widgets/general/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../controllers/providers/bottom_nav_bar_provider.dart';

class LayoutsPage extends StatelessWidget {
  const LayoutsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavBarProvider>(
      builder: (context, provider, child) => Scaffold(
        body: BlocListener<InternetConnectionCubit, InternetConnectionState>(
            listener: (context, state) {
              if (state is NoInternetConnection) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.amber,
                    content: TextWidget(
                      text: context.appLocalization.noInternetConnection,
                      size: context.width * 0.035,
                    ),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              }
            },
            child: provider.navBarPages[provider.index]),
        bottomNavigationBar: const BottomNavigationBarWidget(),
      ),
    );
  }
}
