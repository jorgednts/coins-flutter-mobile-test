import 'package:flutter/material.dart';

import 'modules/splash/presentation/page/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Coins Flutter Mobile Test',
        home: SplashPage(),
      );
}
