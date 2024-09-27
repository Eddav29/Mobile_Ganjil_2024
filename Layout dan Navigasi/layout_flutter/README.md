## Penulis
- Eddo Dava Alfarisi
- NIM: 2241720232

# Praktikum 1: Flutter Layout

## Deskripsi
Pada praktikum ini, kita akan membuat sebuah aplikasi Flutter sederhana yang menampilkan informasi wisata gunung di Batu, Malang, Indonesia. Aplikasi ini menggunakan widget dasar Flutter seperti `Container`, `Row`, `Column`, dan `Text`.

## Struktur Proyek
Berikut adalah struktur proyek dari aplikasi ini:
```
/d:/Kuliah/Semester 5/Mobile_Ganjil_2024/Layout dan Navigasi/layout_flutter/
│
├───android
│   ├───app
│   │   ├───build.gradle
│   │   └───src
│   │       ├───main
│   │       │   ├───AndroidManifest.xml
│   │       │   ├───java
│   │       │   └───res
│   └───build.gradle
├───ios
│   ├───Runner
│   │   ├───AppDelegate.swift
│   │   ├───Assets.xcassets
│   │   ├───Info.plist
│   │   └───main.swift
│   └───Runner.xcodeproj
├───lib
│   ├───main.dart
├───test
│   ├───widget_test.dart
├───images
│   ├───gunung_batu.jpg
└───pubspec.yaml
├───README.md
```

## Kode Utama
```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
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
                    Icon(
                        Icons.star,
                        color: Colors.red[500],
                    ),
                    const Text('41'),
                ],
            ),
        );

        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter layout: Eddo Dava Alfarisi dan 2241720232',
            home: Scaffold(
                appBar: AppBar(
                    title: const Text('Flutter layout demo'),
                ),
                body: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                            titleSection,
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
```

## Langkah-langkah
1. **Langkah 1**: Membuat aplikasi Flutter dengan `MaterialApp` dan `Scaffold`.
2. **Langkah 2**: Membuat `titleSection` yang berisi informasi wisata gunung.
   1. **Soal 1**: Menggunakan `Expanded` widget untuk mengatur tata letak.
   2. **Soal 2**: Menambahkan `Container` untuk judul dan lokasi.
   3. **Soal 3**: Menambahkan ikon bintang dan teks jumlah bintang.

## hasil <br>

![alt text](images/praktikum1-4.png)



## Lisensi
Proyek ini dilisensikan di bawah lisensi MIT.