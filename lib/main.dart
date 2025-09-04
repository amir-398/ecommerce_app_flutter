import 'package:ecommerce_app_flutter/pages/login_page.dart';
import 'package:ecommerce_app_flutter/pages/register_page.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/second_page.dart';
import 'pages/third_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Drawer Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.blue, useMaterial3: true),
      // Définition de la route principale
      initialRoute: '/',
      // Définition des autres routes
      routes: {
        '/': (_) => const MyHomePage(),
        '/second': (_) => const SecondPage(),
        '/third': (_) => const ThirdPage(),
        '/login': (_) => const LoginPage(),
        '/register': (_) => const RegisterPage(),
      },
    );
  }
}
