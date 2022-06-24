
import 'package:controla_expedicao/app/features/home_page/home_page.dart';
import 'package:controla_expedicao/app/features/login_page/views/login_page.dart';
import 'package:controla_expedicao/app/features/signup_page/signup_page.dart';
import 'package:flutter/material.dart';

class ExpedicaoApp extends StatelessWidget {
  const ExpedicaoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      routes: {
        '/login': (_) => const LoginPage(),
        '/signup': (_) => const SignupPage(),
        '/home': (_) => const HomePage(),
      },
    );
  }
}