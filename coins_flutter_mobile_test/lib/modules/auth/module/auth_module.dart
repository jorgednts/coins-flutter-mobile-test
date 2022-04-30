import 'package:flutter_modular/flutter_modular.dart';

import '../domain/use_case/verify_login_use_case.dart';
import '../presentation/controller/login_controller.dart';
import '../presentation/page/login_page.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton<VerifyLoginUseCase>(
          (i) => VerifyLoginUseCaseImpl(),
        ),
        Bind.factory(
          (i) => LoginController(verifyLoginUseCase: i()),
        )
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const LoginPage(),
        ),
      ];
}
