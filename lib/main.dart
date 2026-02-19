// Updated lib/main.dart with improved responsive design

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Design',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Responsive UI'),
        ),
        body: ResponsiveLayout(
          mobileBody: MobileBody(),
          tabletBody: TabletBody(),
          desktopBody: DesktopBody(),
        ),
      ),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody;

  ResponsiveLayout({required this.mobileBody, required this.tabletBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 600) {
      return mobileBody; // Mobile layout
    } else if (screenWidth < 1200) {
      return tabletBody; // Tablet layout
    } else {
      return desktopBody; // Desktop layout
    }
  }
}

class MobileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('This is the mobile layout'),
    );
  }
}

class TabletBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('This is the tablet layout'),
    );
  }
}

class DesktopBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('This is the desktop layout'),
    );
  }
}