import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> options = [
    {
      'title': 'Escanear Codigo QR',
      'route': '/qr_scan',
      'icon': Icons.qr_code,
    },
    {
      'title': 'Escanear codigo de barras',
      'route': '/barcode_scan',
      'icon': Icons.qr_code,
    },
    {
      'title': 'Generar Codigo QR',
      'route': '/qr_generator',
      'icon': Icons.qr_code_scanner,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
            radius: 100.0,
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage('images/ojos.jpg'),
          ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             CircleAvatar(
            radius: 100.0,
            backgroundColor: Colors.purple,
            backgroundImage: AssetImage('images/ella.jpg'),
          ),
            Text(
              'Bienvenidos al escaneador de codigo QR',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 32),
            ListView.builder( 
              shrinkWrap: true,
              itemCount: options.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, options[index]['route']);
                    },
                    leading: Icon(options[index]['icon']),
                    title: Text(options[index]['title']),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
