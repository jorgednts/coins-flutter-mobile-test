import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'di/app_module.dart';

void main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Coins Flutter Mobile Test',
        initialRoute: '/',
      ).modular();
}
