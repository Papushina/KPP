import 'package:flutter/material.dart';
import 'screens/converter_screen/conv_screen.dart';

void main() {
  runApp(const CurrencyConverterApp());
}

class CurrencyConverterApp extends StatelessWidget {
  const CurrencyConverterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Currency converter',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: const Color.fromARGB(255, 197, 255, 187),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 52, 118, 56)),
      ),
      home: const ConvertScreen(),
    );
  }
}
