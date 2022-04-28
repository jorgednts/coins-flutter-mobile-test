import 'package:flutter/material.dart';

import '../../../auth/presentation/page/login_page.dart';

class SplashController {
  Future<void> goToLoginModule(BuildContext context) async {
    await Future.delayed(
      const Duration(seconds: 3),
    );

    await Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginPage(),
      ),
    );
  }
}
