import 'package:flutter/material.dart';
import 'stream.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eddo Dava A',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({Key? key}) : super(key: key);

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage>{
  Color bgColor = Colors.blueGrey;
  late  ColorStream colorStream;
  int lastNumber =0;
  late StreamController numberStreamController;
  late NumberStream numberStream;
  late StreamTransformer transformer;

  // void changeColor() async{
  //   await for (var eventColor in colorStream.getColors()){
  //     setState(() {
  //       bgColor = eventColor;
  //     });
  //   }
  // }

  void changeColor(){
    colorStream.getColors().listen((eventColor) {
      setState(() {
        bgColor = eventColor;
      });
    });
  }


  @override
  void initState(){
    // super.initState();
    // colorStream = ColorStream();
    // changeColor();
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream;
    // stream.listen((event) {
    //   setState(() {
    //     lastNumber = event;
    //   });
    // }).onError((error){
    //   setState(() {
    //     lastNumber=-1;
    //   });
    // });

    transformer = StreamTransformer<int, int>.fromHandlers(
      handleData: (value,sink){
        sink.add(value*10);
      },
      handleError: (error, trace, sink) {
        sink.add(-1);
      },
      handleDone: (sink) => sink.close(),
    );

    stream.transform(transformer).listen((event){
      setState(() {
        lastNumber = event;
      });
    }).onError((event){
      setState(() {
        lastNumber = -1;
      });
    });
    super.initState();
  }

  @override
  void dispose(){
    numberStreamController.close();
    super.initState();
  }

  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    numberStream.addNumberToSink(myNum);
    // numberStream.addError();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Eddo Dava A'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(lastNumber.toString()),
            ElevatedButton(
              onPressed: () => addRandomNumber(), 
              child: const Text('New Random Number')
              )
          ],
        ),
      )
    );
  }
}

