import 'package:bloc_architecture/core/network/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../constants/api_constants.dart';

/// call methods from the data provider and fine-tune (filter the data as you wish) the data with a model
class AuthRepository {

  Future login(
      BuildContext context, String email, String password) async {
    var data = [email, password.trim()];
    try {
      Response res = await DioClient.post(APIEndPoints.login, data: data);
      // use the model here if needed
      return res;
    } catch (error) {
      rethrow;
    }

  }
}
