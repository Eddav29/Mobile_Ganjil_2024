import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:belanja/models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, foto: 'assets/images/sugar.jpg', stok: 10, rating: 5),
    Item(name: 'Salt', price: 2000, foto: 'assets/images/salt.jpeg', stok: 5, rating: 4),
    Item(name: 'Rice', price: 8000, foto: 'assets/images/rice.jpeg', stok: 2, rating: 3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                // Navigate to the item page using GoRouter
                context.go('/item/${item.name}', extra: item);
              },
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Hero(
                        tag: item.name,
                        child: Image.asset(item.foto, width: 100, height: 100, fit: BoxFit.cover),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: Text(item.name),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            'Rp ${item.price}',
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
