import 'package:bloc_architecture/app_configs.dart';
import 'package:bloc_architecture/core/l10n/generated/l10n.dart';
import 'package:bloc_architecture/features/app/views/widgets/app_providers.dart';
import 'package:bloc_architecture/features/app/views/widgets/root_app_widget.dart';
import 'package:bloc_architecture/features/shared/providers/localization_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../core/services/routing_service.dart';
import '../../shared/themes/light_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: appProviders,
      child: Consumer<LocalizationProvider>(
        builder: (context, localizationProvider, child) => MaterialApp.router(
          debugShowCheckedModeBanner: kDebugMode,
          title: AppConfigs.appTitle,
          locale: Locale(localizationProvider.language),
          theme: lightTheme,
          themeMode: ThemeMode.light,
          localizationsDelegates: const [
            AppLocalization.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppLocalization.delegate.supportedLocales,
          builder: (BuildContext context, Widget? child) =>
              RootAppWidget(child: child),
          routerConfig: RoutingService.router,
        ),
      ),
    );
  }
}
