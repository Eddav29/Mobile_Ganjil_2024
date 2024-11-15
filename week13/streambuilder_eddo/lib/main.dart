import 'package:flutter/material.dart';

import 'stream.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stream Eddo'),
        ),
        body: const Center(
          child: StreamHomePage(),
        ),
      ),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({Key? key}) : super(key: key);

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  late Stream<int> numnberStream;
  @override
  void initState() {
    numnberStream = NumberStream().getNumberStream();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: numnberStream,
        initialData: 0,
        builder: (context, snapshot) {
          if(snapshot.hasError){
            return const Text('Error');
          }
          if(snapshot.hasData){
            return Center(
              child: Text(
                snapshot.data.toString(),
                style: const TextStyle(fontSize: 96),
              ),
            );
          }else{
            return const SizedBox.shrink();
          }
        },
        )
    );
  }
}