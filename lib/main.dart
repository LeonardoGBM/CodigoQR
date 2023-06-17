import 'package:flutter/material.dart';

import 'BarcodeScanPage.dart';
import 'HomePage.dart';
import 'QrGeneratorPage.dart';
import 'QrScanPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Codigo QR',
      theme: ThemeData(primarySwatch: Colors.purple), 
      debugShowCheckedModeBanner: false, 

      routes: {
        '/': (context) => HomePage(),
        '/barcode_scan': (context) => BarcodeScanPage(),
        '/qr_generator': (context) => QrGeneratorPage(),
        '/qr_scan': (context) => QrScanPage(),
      },
    );
  }
}
