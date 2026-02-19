import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(NagarikApp());
}

class NagarikApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nagarik App',
      home: CitizenshipDetailScreen(),
    );
  }
}

class CitizenshipDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Citizenship Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image.network('https://example.com/path_to_photo.jpg'), // Replace with actual image URL
            ),
            SizedBox(height: 20),
            Text(
              'Name: John Doe',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            Text(
              'Citizenship Number: 123456789',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Date of Birth: 1990-01-01',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            QrImage(
              data: 'https://example.com/qr_code_data', // Replace with actual QR code data
              size: 200,
            ),
          ],
        ),
      ),
    );
  }
}