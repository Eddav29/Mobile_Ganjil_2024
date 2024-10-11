import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Auto Size Text Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.yellowAccent,
                width: 50,
                child: const RedTextWidget(
                  text: 'You have pushed the button this many times:',
                ),
              ),
              Container(
                color: Colors.greenAccent,
                width: 100,
                child: const Text(
                  'You have pushed the button this many times:',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RedTextWidget extends StatelessWidget {
  final String text;

  const RedTextWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.red),
    );
  }
}