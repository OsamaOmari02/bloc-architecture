import 'package:bloc_architecture/core/constants.dart';
import 'package:bloc_architecture/core/network/dio_client.dart';
import 'package:bloc_architecture/core/network/network_info.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../../views/shared/utlis/toast_message.dart';

/// call methods from the data provider and fine-tune (filter the data as you wish) the data with a model
class AuthRepository {
   final DioClient _dio = DioClient();

   Future login(
      BuildContext context, String email, String password) async {
    var data = [email, password.trim()];
    try {
      await InternetConnectionService.checkConnectivity();
      Response res = await _dio.post(APIEndPoints.login, data: data);
      // use the model here if needed
      return res;
    } catch (error) {
      ToastMessage.showErrorToastMessage(
          context: context, msg: error.toString());
    }
  }
}
