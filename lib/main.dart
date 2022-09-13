import 'package:darson_stock_trainer/userAuthentication/signin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Darson Stock_Trainer',
      theme: ThemeData(
          textTheme: const TextTheme(
            bodyText1: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Color(0xffFBCB2E)),
            button: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
            bodyText2: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff479E6C)),
          ),
          primarySwatch: Colors.green,
          hintColor: Colors.black.withOpacity(0.8),
          primaryColor: const Color(0xffFBCB2E),
          primaryColorDark: const Color(0xff479E6C)),
      home: Login(),
    );
  }
}
