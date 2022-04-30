import 'package:flutter_modular/flutter_modular.dart';

import '../modules/auth/module/auth_module.dart';
import '../modules/coins/module/coins_module.dart';
import '../modules/common/coins_constants_routes.dart';
import '../modules/splash/module/splash_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute(
      CoinsConstantsRoutes.splashModule,
      module: SplashModule(),
    ),
    ModuleRoute(
      CoinsConstantsRoutes.authModule,
      module: AuthModule(),
    ),
    ModuleRoute(
      CoinsConstantsRoutes.coinsModule,
      module: CoinsModule(),
    ),
  ];
}
