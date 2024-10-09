// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// Fungsi utama yang menjalankan aplikasi
void main() {
  runApp(const MyApp());
}

// Kelas MyApp yang merupakan widget utama aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReelsPage(), // Halaman utama aplikasi
    );
  }
}

// Kelas ReelsPage yang menampilkan halaman dengan daftar reels
class ReelsPage extends StatefulWidget {
  const ReelsPage({super.key});

  @override
  _ReelsPageState createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical, // Scroll secara vertikal
        itemCount: 10, // Jumlah reels yang ditampilkan
        itemBuilder: (context, index) {
          return ReelItem(index: index); // Membuat item reel berdasarkan indeks
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

// Kelas ReelItem yang menampilkan setiap item reel
class ReelItem extends StatelessWidget {
  final int index;

  const ReelItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://4.bp.blogspot.com/-95BtXQn3Qxw/VtpltoZc18I/AAAAAAAAABQ/C-GxksuSTJU/s1600/gambar-wallpaper-alam-kartun-cute.jpg"
              ), // Ganti dengan path gambar yang benar
              fit: BoxFit.cover, // Agar gambar memenuhi container
            ),
          ),
        ),
        // Top branding (misal uzone.id)
        Positioned(
          top: 30,
          left: 20,
          child: Row(
            children: [
              // Menggunakan Text untuk shadow pada Icon
              Text(
                String.fromCharCode(Icons.arrow_back.codePoint),
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: Icons.arrow_back.fontFamily,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 4.0,
                      color: Colors.black.withOpacity(0.5),
                      offset: const Offset(2, 2),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'Reels',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      blurRadius: 4.0,
                      color: Colors.black.withOpacity(0.5),
                      offset: const Offset(2, 2),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // Social Media Icons and Stats
        const Positioned(
          bottom: 30,
          right: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // Like Icon and Count
              Icon(Icons.favorite, color: Colors.red, size: 30),
              SizedBox(height: 5),
              Text(
                '100',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 20),
              // Comment Icon and Count
              Icon(Icons.comment, color: Colors.grey, size: 30),
              SizedBox(height: 5),
              Text(
                '100',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 20),
              // Share Icon
              Icon(Icons.share, color: Colors.blue, size: 30),
              SizedBox(height: 5),
              Text(
                '100',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 20),
              // more icon
              Icon(Icons.more_vert, color: Colors.white, size: 30),
              SizedBox(height: 20),

              // Music Icon
              Icon(Icons.music_video_sharp, color: Colors.white, size: 30),

            ],
          ),
        ),
        // User Info
        Positioned(
          bottom: 120,
          left: 20,
          child: Row(
            children: [
              CircleAvatar(
          radius: 15,
          backgroundColor: Colors.black, // Placeholder for profile image
              ),
              SizedBox(width: 10),
              Text(
          '2241720232 Eddo Dava Alfarisi',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            shadows: [
              Shadow(
                blurRadius: 4.0,
                color: Colors.black.withOpacity(0.5),
                offset: const Offset(2, 2),
              ),
            ],
          ),
              ),
              SizedBox(width: 10),
              Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.2),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.white),
          ),
          child: Text(
            'Ikuti',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
              ),
            ],
          ),
        ),
        // Caption Text
        // Camera Icon with shadow
       const Positioned(
          top: 40,
          right: 20,
          child: Row(
            children: [
              Icon(Icons.camera_alt, color: Colors.white, size: 30),
              
              SizedBox(width: 10),
            ],
          ),
        ),
        const Positioned(
          bottom: 80,
          left: 40,
          child: Text(
            'Beautiful Mountaine in ......',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ),
      Positioned(
          bottom: 55,
          left: 40,
          child: Opacity(
            opacity: 0.7, // Mengurangi opacity
            child: RichText(
            text: 
            TextSpan(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              TextSpan(
                text: 'Disukai oleh ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              // ignore: prefer_const_constructors
              TextSpan(
                text: 'people',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // ignore: prefer_const_constructors
              TextSpan(
                text: ' dan ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              TextSpan(
                text: '100 orang lainnya',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 40,
          child:  Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(Icons.queue_music, color: Colors.white, size: 12),
                SizedBox(width: 5),
                Text(
                  'lagu orang ~ audio asli',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
