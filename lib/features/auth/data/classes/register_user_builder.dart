import 'package:bloc_architecture/features/auth/data/models/register_user_model.dart';
import 'package:image_picker/image_picker.dart';
import 'package:bloc_architecture/features/shared/enums/gender_enum.dart';
import 'package:bloc_architecture/features/shared/models/city_model.dart';

class RegisterUserBuilder {
  String? _name;
  String? _email;
  String? _phoneNumber;
  String? _password;
  String? _confirmPassword;
  XFile? _profilePicture;
  String? _birthday;
  Gender? _gender;
  String? _identification;
  String? _practiceNumber;
  City? _city;
  XFile? _frontIdentificationPicture;
  XFile? _backIdentificationPicture;
  List<XFile>? _certificates;

  RegisterUserBuilder setName(String name) {
    _name = name;
    return this;
  }

  RegisterUserBuilder setEmail(String email) {
    _email = email;
    return this;
  }

  RegisterUserBuilder setPhoneNumber(String phoneNumber) {
    _phoneNumber = phoneNumber;
    return this;
  }

  RegisterUserBuilder setPassword(String password) {
    _password = password;
    return this;
  }

  RegisterUserBuilder setConfirmPassword(String confirmPassword) {
    _confirmPassword = confirmPassword;
    return this;
  }

  RegisterUserBuilder setProfilePicture(XFile profilePicture) {
    _profilePicture = profilePicture;
    return this;
  }

  RegisterUserBuilder setBirthday(String birthday) {
    _birthday = birthday;
    return this;
  }

  RegisterUserBuilder setGender(Gender gender) {
    _gender = gender;
    return this;
  }

  RegisterUserBuilder setIdentification(String identification) {
    _identification = identification;
    return this;
  }

  RegisterUserBuilder setPracticeNumber(String practiceNumber) {
    _practiceNumber = practiceNumber;
    return this;
  }

  RegisterUserBuilder setCity(City city) {
    _city = city;
    return this;
  }

  RegisterUserBuilder setFrontIdentificationPicture(
      XFile frontIdentificationPicture) {
    _frontIdentificationPicture = frontIdentificationPicture;
    return this;
  }

  RegisterUserBuilder setBackIdentificationPicture(
      XFile backIdentificationPicture) {
    _backIdentificationPicture = backIdentificationPicture;
    return this;
  }

  RegisterUserBuilder setCertificates(List<XFile> certificates) {
    _certificates = certificates;
    return this;
  }

  RegisterUser build() {
    return RegisterUser(
      name: _name!,
      email: _email!,
      phoneNumber: _phoneNumber!,
      password: _password!,
      confirmPassword: _confirmPassword!,
      profilePicture: _profilePicture!,
      birthday: _birthday!,
      gender: _gender!,
      identification: _identification!,
      practiceNumber: _practiceNumber!,
      city: _city!,
      frontIdentificationPicture: _frontIdentificationPicture!,
      backIdentificationPicture: _backIdentificationPicture!,
      certificates: _certificates!,
    );
  }
}
