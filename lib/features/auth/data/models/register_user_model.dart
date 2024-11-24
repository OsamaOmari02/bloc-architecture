import 'package:bloc_architecture/features/shared/enums/gender_enum.dart';
import 'package:bloc_architecture/features/shared/models/city_model.dart';
import 'package:image_picker/image_picker.dart';

class RegisterUser {
  final String name;
  final String email;
  final String phoneNumber;
  final String password;
  final String confirmPassword;
  final XFile profilePicture;
  final String birthday;
  final Gender gender;
  final String identification;
  final String practiceNumber;
  final City city;
  final XFile frontIdentificationPicture;
  final XFile backIdentificationPicture;
  List<XFile> certificates;

  RegisterUser({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.password,
    required this.confirmPassword,
    required this.profilePicture,
    required this.birthday,
    required this.gender,
    required this.identification,
    required this.practiceNumber,
    required this.city,
    required this.frontIdentificationPicture,
    required this.backIdentificationPicture,
    required this.certificates,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'phoneNumber': phoneNumber.replaceAll(' ', ''),
      'password': password,
      'confirmPassword': confirmPassword,
      'birthday': birthday,
      'gender': gender.index,
      'identification': identification,
      'professionalPracticeNumber': practiceNumber,
      'city': city.id,
    };
  }
}
