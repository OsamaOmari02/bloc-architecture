import 'package:dio/dio.dart';
import 'package:bloc_architecture/features/auth/data/utils/save_auth_data_locally_util.dart';
import 'package:bloc_architecture/features/shared/enums/role_enum.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/dio_client.dart';
import '../../../shared/classes/base_repository_class.dart';
import '../services/jwt_service.dart';
import '../models/login_user_model.dart';

class LoginRepository extends BaseRepository {
  LoginRepository({required super.cancelToken});

  Future<List<Role>> login({
    required LoginUser loginUser,
  }) async {
    final data = loginUser.toJson();
    final Response res = await DioClient.post(
      APIConstants.login,
      data: data,
      cancelToken: cancelToken,
    );
    final Map<String, dynamic> decodedToken =
        JwtService.decodeToken(res.data['data']);
    await saveAuthDataLocally(res, decodedToken);
    final List<Role> roles = (decodedToken['roles'] as List<dynamic>)
        .map<Role>((role) => Role.values[role])
        .toList();
    return roles;
  }
}
