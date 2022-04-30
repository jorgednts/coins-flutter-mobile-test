import 'package:flutter_modular/flutter_modular.dart';

import '../modules/auth/module/auth_module.dart';
import '../modules/coins/module/coins_module.dart';
import '../modules/splash/module/splash_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute(
      '/',
      module: SplashModule(),
    ),
    ModuleRoute(
      '/auth/',
      module: AuthModule(),
    ),
    ModuleRoute(
      '/coins/',
      module: CoinsModule(),
    ),
  ];
}
