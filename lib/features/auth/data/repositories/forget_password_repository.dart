import 'package:dio/dio.dart';
import 'package:bloc_architecture/features/shared/classes/base_repository_class.dart';

import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/dio_client.dart';

class ForgetPasswordRepository extends BaseRepository {
  ForgetPasswordRepository({required super.cancelToken});

  Future forgetPassword({
    required String email,
  }) async {
    final Response res = await DioClient.post(
      APIConstants.forgetPassword,
      data: {'email': email},
      cancelToken: cancelToken,
    );
    return res.data['frontFacingMessage'];
  }
}
