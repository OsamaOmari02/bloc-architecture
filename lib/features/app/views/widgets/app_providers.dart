import 'package:bloc_architecture/features/layouts/controllers/providers/bottom_nav_bar_provider.dart';
import 'package:bloc_architecture/features/shared/cubits/internet_connection/internet_connection_cubit.dart';
import 'package:bloc_architecture/features/shared/providers/localization_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

final List<SingleChildWidget> appProviders = [
  BlocProvider<InternetConnectionCubit>(
    create: (context) => InternetConnectionCubit()..initConnectionListener(),
  ),
  ChangeNotifierProvider<LocalizationProvider>(
    create: (context) => LocalizationProvider()..fetchLanguageFromCache(),
  ),
  ChangeNotifierProvider<BottomNavBarProvider>(
    create: (context) => BottomNavBarProvider(),
  ),
];
