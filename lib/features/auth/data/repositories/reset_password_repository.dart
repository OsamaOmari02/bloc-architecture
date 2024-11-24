import 'package:dio/dio.dart';
import 'package:bloc_architecture/features/shared/enums/role_enum.dart';
import 'package:bloc_architecture/features/shared/classes/base_repository_class.dart';

import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/dio_client.dart';
import '../models/reset_password_model.dart';
import '../services/jwt_service.dart';
import '../utils/save_auth_data_locally_util.dart';

class ResetPasswordRepository extends BaseRepository {
  ResetPasswordRepository({required super.cancelToken});

  Future<(List<Role>, String)> resetPassword({
    required ResetPassword resetPassword,
  }) async {
    final data = resetPassword.toJson();
    final Response res = await DioClient.post(
      APIConstants.resetPassword,
      data: data,
      cancelToken: cancelToken,
    );
    // resetting password automatically logs user in
    final Map<String, dynamic> decodedToken =
        JwtService.decodeToken(res.data['data']);
    await saveAuthDataLocally(res, decodedToken);
    final List<Role> roles = (decodedToken['roles'] as List<dynamic>)
        .map<Role>((role) => Role.values[role])
        .toList();
    return (roles, res.data['frontFacingMessage'] as String);
  }
}
