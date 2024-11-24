import 'package:dio/dio.dart';
import 'package:bloc_architecture/core/validations/files_validation.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/dio_client.dart';
import '../../../shared/classes/base_repository_class.dart';
import '../models/register_user_model.dart';

class RegisterRepository extends BaseRepository {
  RegisterRepository({required super.cancelToken});

  Future<void> register({
    required RegisterUser registerUser,
  }) async {
    final FormData formData = FormData.fromMap(registerUser.toJson());
    final String profilePictureExtension =
        registerUser.profilePicture.path.split('.').last;
    formData.files.add(
      MapEntry(
        'profilePicture',
        await MultipartFile.fromFile(
          registerUser.profilePicture.path,
          filename: registerUser.profilePicture.name,
          contentType: MediaType('image', profilePictureExtension),
        ),
      ),
    );
    final String identificationPictureExtension =
        registerUser.frontIdentificationPicture.path.split('.').last;
    formData.files.add(
      MapEntry(
        'frontIdentificationPicture',
        await MultipartFile.fromFile(
          registerUser.frontIdentificationPicture.path,
          filename: registerUser.frontIdentificationPicture.name,
          contentType: MediaType('image', identificationPictureExtension),
        ),
      ),
    );
    final String backIdentificationPictureExtension =
        registerUser.backIdentificationPicture.path.split('.').last;
    formData.files.add(
      MapEntry(
        'backIdentificationPicture',
        await MultipartFile.fromFile(
          registerUser.backIdentificationPicture.path,
          filename: registerUser.backIdentificationPicture.name,
          contentType: MediaType('image', backIdentificationPictureExtension),
        ),
      ),
    );
    for (final XFile certificateFile in registerUser.certificates) {
      final String type =
          FilesValidation.isImage(certificateFile.path) ? 'image' : 'raw';
      formData.files.add(
        MapEntry(
          'certificates',
          await MultipartFile.fromFile(
            certificateFile.path,
            filename: certificateFile.name,
            contentType: MediaType(type, backIdentificationPictureExtension),
          ),
        ),
      );
    }
    await DioClient.post(
      APIConstants.register,
      data: formData,
      options: Options(sendTimeout: const Duration(minutes: 1)),
      cancelToken: cancelToken,
    );
  }
}
