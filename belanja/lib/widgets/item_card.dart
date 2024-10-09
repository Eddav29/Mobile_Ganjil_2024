import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemCard extends StatelessWidget {
  final Item item;
  final VoidCallback onTap;

  const ItemCard({super.key, required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
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
  }
}
