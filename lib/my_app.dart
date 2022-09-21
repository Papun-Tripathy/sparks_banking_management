import 'package:banking_management/Pages/bank.dart';
import 'package:banking_management/Pages/welcome.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/welcome': (context) => const WelcomePage(),
        '/bank': (context) => const BankPage(),
      },
      initialRoute: '/welcome',
    );
  }
}
