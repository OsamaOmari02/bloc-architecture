import 'package:dio/dio.dart';

import 'package:bloc_architecture/core/constants/api_constants.dart';
import 'package:bloc_architecture/core/network/dio_client.dart';

import 'package:bloc_architecture/features/shared/models/city_model.dart';
import 'package:bloc_architecture/features/shared/classes/base_repository_class.dart';

class CitiesRepository extends BaseRepository {
  CitiesRepository({required super.cancelToken});

  Future<List<City>> fetch() async {
    final queryParameters = {
      'limit': APIConstants.limit,
      'skip': 0,
    };
    final Response res = await DioClient.get(
      APIConstants.cities,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
    );
    final List<City> cities =
        res.data['data'].map<City>((city) => City.fromJson(city)).toList();
    return cities;
  }
}
