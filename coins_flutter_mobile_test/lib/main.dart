import 'package:flutter/material.dart';

import 'coins/presentation/page/coin_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Coins Flutter Mobile Test',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const CoinListPage(),
      );
}
