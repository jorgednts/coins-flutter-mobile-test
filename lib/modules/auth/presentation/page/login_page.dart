import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../generated/l10n.dart';
import '../../../common/coins_constants_colors.dart';
import '../../../common/coins_constants_routes.dart';
import '../../constants/login_page_image_constants.dart';
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
                          hintText: S.of(context).loginPageEmail,
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
                          hintText: S.of(context).loginPagePassword,
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
                        child: Text(
                          S.of(context).loginPageLogin,
                          style: const TextStyle(fontSize: 18),
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
                              return InfoTextWidget(
                                infoText:
                                    S.of(context).loginPageInfoTextInitState,
                              );
                            case LoginPageState.credentialError:
                              return InfoTextWidget(
                                infoText: S
                                    .of(context)
                                    .loginPageInfoTextCredentialError,
                              );
                            case LoginPageState.successLogin:
                              return InfoTextWidget(
                                  infoText: S
                                      .of(context)
                                      .loginPageInfoTextSuccessfulLogin);
                            case LoginPageState.loading:
                              return InfoTextWidget(
                                  infoText:
                                      S.of(context).loginPageInfoTextLoading);
                            case LoginPageState.emptyCredential:
                              return InfoTextWidget(
                                  infoText: S
                                      .of(context)
                                      .loginPageInfoTextEmptyCredential);
                          }
                        }),
                  ),
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
