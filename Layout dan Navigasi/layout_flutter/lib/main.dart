import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override


  Widget build(BuildContext context) {
    // Membuat title section
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),

      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
          Container(
            padding: const EdgeInsets.all(32.0), // Padding sebesar 32 di semua sisi
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.red[500],
                ),
                const SizedBox(width: 8), // Memberi jarak antara ikon dan teks
                const Text('41'),
              ],
            ),
          ),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    // Membuat button section
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Gunung Banyak adalah sebuah gunung yang terletak di Kabupaten Batu'
        ', Jawa Timur, Indonesia. Gunung ini memiliki ketinggian 1.301 meter di atas permukaan laut.'
        ' Gunung ini terletak di kawasan Wisata Banyak, yang merupakan kawasan wisata yang terletak di lereng Gunung Banyak. '
        'Gunung ini terletak di kawasan Wisata Banyak, yang merupakan kawasan wisata yang terletak di lereng Gunung Banyak.'
        ' By Eddo Dava Alfarisi dan 2241720232',
        softWrap: true,
      ),
    );

    // Menampilkan layout utama
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
              Image.asset(
                'images/gunung-batu.jpeg',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              titleSection, // Menampilkan titleSection di sini
              buttonSection,
              textSection,
            ],
          ),
        ),
      ),
    );
  }

  // Membuat kolom tombol
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
