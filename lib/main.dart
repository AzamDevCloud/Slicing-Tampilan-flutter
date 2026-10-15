import 'package:flutter/material.dart';
import 'pages/splash_page.dart';

// warna aplikasi (navy dan hijau lime, sama seperti desain)
const Color navy = Color(0xFF0F1B3A);
const Color lime = Color(0xFFA6FA7F);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tunas',
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );   
  }
}