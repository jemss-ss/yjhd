import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nagarik App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Nagarik App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[  
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Emblem_of_Nepal.svg/512px-Emblem_of_Nepal.svg.png', width: 24, height: 24),
                    SizedBox(width: 8),
                    Text('Citizenship'),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Emblem_of_Nepal.svg/512px-Emblem_of_Nepal.svg.png', width: 24, height: 24),
                    SizedBox(width: 8),
                    Text('National ID'),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Emblem_of_Nepal.svg/512px-Emblem_of_Nepal.svg.png', width: 24, height: 24),
                    SizedBox(width: 8),
                    Text('Driving License'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}