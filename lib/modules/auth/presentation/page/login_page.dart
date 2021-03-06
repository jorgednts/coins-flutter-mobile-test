import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../common/coins_constants_colors.dart';
import '../../../common/coins_constants_routes.dart';
import '../../constants/login_page_image_constants.dart';
import '../../constants/login_page_string_constants.dart';
import '../../domain/model/user_model.dart';
import '../common/custom_text_field_widget.dart';
import '../common/info_text_widget.dart';
import '../controller/login_controller.dart';
import '../state/login_page_state.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPassword = TextEditingController();

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      if (controller.value == LoginPageState.successLogin) {
        _goToCoinListPage(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          color: CoinsConstantsColors.primaryColor,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 200, bottom: 20),
                    child: Image.asset(
                      LoginPageImageConstants.coinsLoginLogo,
                      width: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Icon(
                            Icons.account_circle_rounded,
                            color: CoinsConstantsColors.secondaryColor,
                            size: 30,
                          ),
                        ),
                        CustomTextFieldWidget(
                          textEditingController: userEmail,
                          hintText: LoginPageStringConstants.textFieldEmail,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Icon(
                            Icons.password_sharp,
                            color: CoinsConstantsColors.secondaryColor,
                            size: 30,
                          ),
                        ),
                        CustomTextFieldWidget(
                          obscureText: true,
                          textEditingController: userPassword,
                          hintText: LoginPageStringConstants.textFieldPassword,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: CoinsConstantsColors.secondaryColor,
                        ),
                        onPressed: () {
                          final user = UserModel(
                            email: userEmail.text.toString(),
                            password: userPassword.text.toString(),
                          );
                          controller.doLogin(user);
                        },
                        child: const Text(
                          LoginPageStringConstants.elevatedButtonLogin,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ValueListenableBuilder<LoginPageState>(
                        valueListenable: controller,
                        builder: (context, state, _) {
                          switch (state) {
                            case LoginPageState.initialState:
                              return const InfoTextWidget(
                                infoText:
                                    LoginPageStringConstants.infoTextInitState,
                              );
                            case LoginPageState.credentialError:
                              return const InfoTextWidget(
                                infoText: LoginPageStringConstants
                                    .infoTextCredentialError,
                              );
                            case LoginPageState.successLogin:
                              return const InfoTextWidget(
                                  infoText: LoginPageStringConstants
                                      .infoTextSuccessfulLogin);
                            case LoginPageState.loading:
                              return const InfoTextWidget(
                                  infoText:
                                      LoginPageStringConstants.infoTextLoading);
                            case LoginPageState.emptyCredential:
                              return const InfoTextWidget(
                                  infoText: LoginPageStringConstants
                                      .infoTextEmptyCredential);
                          }
                        }),
                  )
                ],
              ),
            ),
          ),
        ),
      );

  Future<void> _goToCoinListPage(BuildContext context) async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    Modular.to.navigate(CoinsConstantsRoutes.coinsModule);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
