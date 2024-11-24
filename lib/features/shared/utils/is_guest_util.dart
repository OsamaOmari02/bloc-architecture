import 'package:bloc_architecture/core/constants/cache_constants.dart';

import '../../../core/services/shared_pref_service.dart';

bool get isGuest => SharedPrefService.getBool(CacheConstants.isGuest) ?? false;
