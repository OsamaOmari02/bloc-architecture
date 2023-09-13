import 'package:bloc/bloc.dart';
import 'package:bloc_architecture/core/network/dio_client.dart';
import 'package:bloc_architecture/views/pages/app/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/adapters.dart';

import 'core/constants/other_constants.dart';
import 'core/services/bloc_observer.dart';
import 'core/services/firebase_crashlytics_service.dart';
import 'core/services/shared_pref_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  // init methods

  // add firebase_options file first
  // options: DefaultFirebaseOptions.currentPlatform
  // await Firebase.initializeApp();
  // FirebaseCrashlyticsService.init();
  await SharedPrefService.init();
  final String? token = SharedPrefService.getString(TOKEN);
  await Hive.initFlutter();
  // Hive.registerAdapter(MyProfileHiveAdapter());
  // await Hive.openBox<MyProfileHive>(MY_DATA);
  DioClient.init();
  Bloc.observer = MyBlocObserver();
  runApp(App(token: token));
}


