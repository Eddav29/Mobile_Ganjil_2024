import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eddo Dava - 2241720232',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({Key? key}) : super(key: key);

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from Future Demo'),
      ),
      body: Center(
        child: Column(
          children:[
            ElevatedButton(
              child: const Text('Go'),
              onPressed: (){
                setState(() {});
                getData().then((value) {
                  result = value.body.toString().substring(0,450);
                  setState(() {});
                }).catchError((_){
                  result = 'An Error Occured';
                  setState(() {});
                });
              },
            ),
            const Spacer(),
            Text(result),
            const CircularProgressIndicator(),
            const Spacer(),
          ]
        ),
      ),
    );
  }

  Future<Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = 'books/v1/volumes/kLAoswEACAAJ';
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }
  
}