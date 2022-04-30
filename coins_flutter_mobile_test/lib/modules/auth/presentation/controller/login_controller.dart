import 'package:flutter/material.dart';

import '../../domain/model/user_model.dart';
import '../../domain/use_case/verify_login_use_case.dart';
import '../state/login_page_state.dart';

class LoginController extends ValueNotifier<LoginPageState> {
  LoginController({required this.verifyLoginUseCase})
      : super(LoginPageState.initialState);

  final VerifyLoginUseCase verifyLoginUseCase;

  Future<void> doLogin(UserModel userModel) async {
    value = LoginPageState.loading;
    await Future.delayed(
        const Duration(seconds: 2));
    final state = verifyLoginUseCase.call(userModel);
    switch (state) {
      case AuthState.emptyFields:
        value = LoginPageState.emptyCredential;
        break;
      case AuthState.valid:
        value = LoginPageState.successLogin;
        break;
      case AuthState.invalid:
        value = LoginPageState.credentialError;
        break;
    }
  }
}
