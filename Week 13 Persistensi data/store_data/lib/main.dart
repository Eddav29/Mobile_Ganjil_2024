import 'dart:convert';
import './pizza.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Json Demo Eddo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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

class _MyHomePageState extends State<MyHomePage> {
  List<Pizza> myPizza = [];

  Future<List<Pizza>> readJsonFile() async {
    final String myString = await DefaultAssetBundle.of(context)
        .loadString('assets/pizzalist.json');

    List<dynamic> pizzaMapList = jsonDecode(myString);
    List<Pizza> pizzas =
        pizzaMapList.map((pizzaMap) => Pizza.fromJson(pizzaMap)).toList();

    // Debugging: Print JSON converted from objects
    String jsonString = convertToJSON(pizzas);
    print("Converted to JSON: $jsonString");

    return pizzas;
  }

  String convertToJSON(List<Pizza> pizzas) {
    return jsonEncode(pizzas.map((pizza) => pizza.toJson()).toList());
  }

  @override
  void initState() {
    super.initState();
    readJsonFile().then((value) {
      setState(() {
        myPizza = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Json Demo Eddo'),
      ),
      body: myPizza.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: myPizza.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(myPizza[index].pizzaName),
                  subtitle: Text(myPizza[index].description),
                );
              },
            ),
    );
  }
}
