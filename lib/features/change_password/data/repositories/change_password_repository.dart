import 'package:bloc_architecture/core/constants/api_constants.dart';

import '../../../../core/network/dio_client.dart';
import '../../../shared/classes/base_repository_class.dart';
import '../models/change_password_model.dart';

class ChangePasswordRepository extends BaseRepository {
  ChangePasswordRepository({required super.cancelToken});

  Future<void> changePassword({
    required ChangePassword changePassword,
  }) async {
    await DioClient.patch(
      APIConstants.changePassword,
      data: changePassword.toJson(),
      cancelToken: cancelToken,
    );
  }
}
