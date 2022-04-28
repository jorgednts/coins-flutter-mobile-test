import 'package:flutter/material.dart';

import 'modules/coins/presentation/page/coin_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Coins Flutter Mobile Test',
        home: CoinListPage(),
      );
}
