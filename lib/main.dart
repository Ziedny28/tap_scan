import 'package:flutter/material.dart';
import 'package:tap_scan/pages/pdf_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tapScan',
      theme: ThemeData(
        fontFamily: "Poppins",
      ),
      home: const PdfPage(),
    );
  }
}
