import 'package:bloc/bloc.dart';
import 'package:bloc_architecture/core/network/dio_client.dart';
import 'package:bloc_architecture/views/pages/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/services/bloc_observer.dart';
import 'core/services/shared_pref_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  // firebase init
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // FirebaseCrashlyticsService.init();

  // init methods
  await SharedPrefService.init();
  DioClient.init();
  Bloc.observer = MyBlocObserver();
  runApp(const App(token: ''));
}


