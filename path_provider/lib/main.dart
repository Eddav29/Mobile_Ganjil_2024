import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Eddo Path Provider'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  String documentPath='';
  String tempPath='';

  late File myFile;
  String  fileText = '';

  Future getPath() async{
    final docDir = (await getApplicationDocumentsDirectory());
    final tempDir = (await getTemporaryDirectory());
    setState(() {
      documentPath = docDir.path;
      tempPath = tempDir.path;
    });
  }


  Future<bool> writeFile() async{
    try{
      await myFile.writeAsString('Margherita, Capricciosa, Napoli');
    return true;
    }
    catch(e){
      return false;
    }
  }

  Future<bool> readFile() async{
    try{
      String fileContent = await myFile.readAsString();
      setState(() {
        fileText = fileContent;
      });
      return true;
    }
    catch(e){
      return false;
    }
  }

  @override
  void initState(){
    super.initState();
    getPath().then((_){
      myFile = File('$documentPath/pizzas.txt');
      writeFile();
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Path Provider Eddo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Document Path: $documentPath'),
            Text('Temporary Path: $tempPath'),
            ElevatedButton(
              onPressed: (){
                readFile();
              },
              child: const Text('Read File'),
            ),
            Text('File Content: $fileText'),
          ],
        ),
      ),
    );
  }
}
