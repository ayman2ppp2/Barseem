import 'package:barseem/shalaf.dart';
import 'package:barseem/util/Farm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Farm(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Barseem',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
          useMaterial3: true,
        ),
        home: const MyPage(),
      ),
    );
  }
}
