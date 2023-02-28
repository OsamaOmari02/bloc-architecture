import 'package:bloc_architecture/data/data_providers/auth_service.dart';

/// call methods from the data provider and fine-tune (filter the data as you wish) the data with a model
class AuthRepository {
  final AuthService _authService;

  AuthRepository(this._authService);

   Future login(String email, String password) async {
    var res = await _authService.login(email, password);
    // use the model here if needed
    return res;
  }

}
