import 'package:flutter_dotenv/flutter_dotenv.dart';

enum Env {
  dev('dev'),
  prod('prod');

  const Env(this.name);
  final String name;
}

class AppConfigs {
  static late Env env;
  static final String baseUrl = dotenv.env['BASE_URL'] ?? 'none';
  static final String appTitle = dotenv.env['APP_TITLE'] ?? 'Eve';
}
