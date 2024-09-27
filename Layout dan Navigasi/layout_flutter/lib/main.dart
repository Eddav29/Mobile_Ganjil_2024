import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  //langkah 2
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        border: Border.all(
          color: Colors.blue,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            /* soal 1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          /* soal 3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );


    //langkah 1
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout: Eddo Dava Alfarisi dan 2241720232 ',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              titleSection, // Menampilkan titleSection di sini
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Hello World'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
