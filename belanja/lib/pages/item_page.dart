import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:belanja/widgets/footer.dart';  // import Footer

class ItemPage extends StatelessWidget {
  const ItemPage({super.key, Item? item});

  @override
  Widget build(BuildContext context) {
    final Item? item = ModalRoute.of(context)?.settings.arguments as Item?;

    if (item == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Item Not Found"),
        ),
        body: const Center(
          child: Text("Item not found or invalid data passed."),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Hero(
                    tag: item.name,  
                    child: Image.asset(
                      item.foto,
                      width: 250,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    item.name,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Rp ${item.price}',
                    style: const TextStyle(fontSize: 22, color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Stock: ${item.stok}',
                    style: const TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5, (index) {
                      return Icon(
                        index < item.rating ? Icons.star : Icons.star_border,
                        color: Colors.yellow,
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
          const Footer(),  // Tambahkan Footer di sini
        ],
      ),
    );
  }
}
