import 'package:flutter/material.dart';

void main() {
  runApp(NigeriaGovernmentServicesApp());
}

class NigeriaGovernmentServicesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nigeria Government Services',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Nigeria Government Services'),
        ),
        body: Center(
          child: Text('Welcome to the Nigeria Government Services App!'),
        ),
      ),
    );
  }
}