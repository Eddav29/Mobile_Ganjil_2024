import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Eddo Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  final pwdController = TextEditingController();
  String myPass ='';
  final storage = const FlutterSecureStorage();
  final myKey='myPass';
  
  Future writeToSecureStorage() async{
    await storage.write(key: myKey, value: pwdController.text);
  }

  Future readFromSecureStorage() async{
    String secret = await storage.read(key: myKey) ?? '';
    return secret;
  }

  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Path Provide Eddo'),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(8),
          child: Column(children: [
            TextField(
              controller: pwdController,
            ),
            ElevatedButton(child: const Text('saved value'),onPressed: (){
              writeToSecureStorage();
            }),
            ElevatedButton(child: const Text('read value'),onPressed: (){
              readFromSecureStorage().then((value){
                setState(() {
                  myPass = value;
                });
              });
            }),
            Text(myPass),
          ],
          )  
        ),
      )
    );
  }
}