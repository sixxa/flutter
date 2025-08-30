import 'dart:io';
import 'package:flutter/material.dart';
import 'currency_converter_material_page.dart';
import 'currency_converter_cupertino_page.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return const CupertinoApp(
        debugShowCheckedModeBanner: false,
        theme: CupertinoThemeData(
        brightness: Brightness.dark, 
      ),
        home: CurrencyConverterCupertinoPage(),
      );
    } else {
       return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const CurrencyConverterMaterialPage(), 
      );
    }
  }
}
