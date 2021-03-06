import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../common/coins_constants_colors.dart';
import '../../constants/splash_constants_images.dart';
import '../controller/splash_controller.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ModularState<SplashPage, SplashController> {
  @override
  void initState() {
    super.initState();
    controller.goToLoginModule(context);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: CoinsConstantsColors.primaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Container(
                  margin: const EdgeInsets.all(80),
                  child: Image.asset(
                    SplashConstantsImages.splashLogo,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
