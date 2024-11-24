import 'package:dio/dio.dart';
import 'package:bloc_architecture/features/shared/classes/base_repository_class.dart';

import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/dio_client.dart';

class VerificationCodeRepository extends BaseRepository {
  VerificationCodeRepository({required super.cancelToken});

  Future<String> checkVerificationCode({
    required String otp,
  }) async {
    final Response res = await DioClient.post(
      APIConstants.checkVerificationCode,
      data: {'otp': otp},
      cancelToken: cancelToken,
    );
    return res.data['data'];
  }

  Future<String> resendVerificationCode({
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
