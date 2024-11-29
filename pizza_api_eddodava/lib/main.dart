import 'dart:convert';
import 'package:pizza_api_eddodava/httphelper.dart';
import './pizza_detail.dart';
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
      title: 'Flutter Restful APi Demo Eddo',
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
  Future<List<Pizza>> callPizzas() async {
    HttpHelper helper = HttpHelper();
    List<Pizza> pizzas = await helper.getPizzaList();
    return pizzas;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Restful API Demo Eddo'),
      ),
      body: FutureBuilder(
        future: callPizzas(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return const Center(child: Text('Something went wrong'));
          }
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: snapshot.data?.length ?? 0,
            itemBuilder: (BuildContext context, int position) {
              if (position >= snapshot.data!.length) return Container(); // Validasi posisi
              return Dismissible(
                key: Key(snapshot.data![position].id.toString()),
                onDismissed: (direction) {
                  HttpHelper helper = HttpHelper();
                  final pizzaId = snapshot.data![position].id; // Simpan id sebelum menghapus
                  setState(() {
                    snapshot.data!.removeAt(position); // Hapus item dari list
                  });
                  helper.deletePizza(pizzaId); // Hapus dari server
                },
                child: ListTile(
                  title: Text(snapshot.data![position].pizzaName),
                  subtitle: Text(
                    snapshot.data[position].description +
                        ' - \$' +
                        snapshot.data[position].price.toString(),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PizzaDetailScreen(
                          pizza: snapshot.data![position],
                          isNew: false,
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => PizzaDetailScreen(
                    pizza: Pizza(),
                    isNew: true,
                  )));
        },
      ),
    );
  }
}
