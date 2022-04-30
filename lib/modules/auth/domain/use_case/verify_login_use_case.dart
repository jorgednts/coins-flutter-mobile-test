
import '../model/user_model.dart';

mixin VerifyLoginUseCase {
  AuthState call(UserModel user);
}

class VerifyLoginUseCaseImpl implements VerifyLoginUseCase {
  static const String standardEmail = 'user@coins.com';
  static const String standardPassword = 'pass123';

  @override
  AuthState call(UserModel user) {
    if (user.email.isEmpty || user.password.isEmpty) {
      return AuthState.emptyFields;
    }
    if (user.email == standardEmail && user.password == standardPassword) {
      return AuthState.valid;
    } else {
      return AuthState.invalid;
    }
  }
}

enum AuthState{
  emptyFields,
  valid,
  invalid,
}