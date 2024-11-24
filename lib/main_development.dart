import 'package:bloc/bloc.dart';
import 'package:bloc_architecture/app_configs.dart';
import 'package:bloc_architecture/core/services/firebase_crashlytics_service.dart';
import 'package:bloc_architecture/injection_container.dart' as di;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'core/network/dio_client.dart';
import 'core/services/bloc_observer.dart';
import 'core/services/shared_pref_service.dart';
import 'features/app/views/app.dart';
// import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppConfigs.env = Env.dev;
  await Future.wait([
    dotenv.load(fileName: "env/.env.${AppConfigs.env.name}"),
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
    // Firebase.initializeApp(
    //   options: DefaultFirebaseOptions.currentPlatform,
    //   name: '',
    // ),
    di.init(),
    SharedPrefService.init(),
  ]);
  DioClient.init();
  FirebaseCrashlyticsService.init();
  Bloc.observer = MyBlocObserver();
  runApp(const App());
}
