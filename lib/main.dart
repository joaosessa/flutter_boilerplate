import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/presentation/pages/sign_in/sign_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: SignInPage(),
    );
  }
}
