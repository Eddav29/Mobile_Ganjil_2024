# Daftar Isi

- [Daftar Isi](#daftar-isi)
  - [Soal 1](#soal-1)
  - [Soal 2](#soal-2)
  - [Soal 3](#soal-3)
  - [Soal 4](#soal-4)
  - [Soal 5](#soal-5)
  - [Soal 6](#soal-6)
  - [Soal 7](#soal-7)
  - [Soal 8](#soal-8)
  - [Soal 9](#soal-9)
  - [Soal 10](#soal-10)
  - [Soal 11](#soal-11)
  - [Soal 12](#soal-12)

## Soal 1
Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
Gantilah warna tema aplikasi sesuai kesukaan Anda. Lakukan commit hasil jawaban Soal 1 dengan pesan "W13: Jawaban Soal 1"

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eddo Dava A',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const StreamHomePage(),
    );
  }
}
```

## Soal 2
Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.
Lakukan commit hasil jawaban Soal 2 dengan pesan "W13: Jawaban Soal 2"

```dart
import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors =[
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.purple,
  ];
}
```

## Soal 3
Jelaskan fungsi keyword yield* pada kode tersebut!
Apa maksud isi perintah kode tersebut? Lakukan commit hasil jawaban Soal 3 dengan pesan "W13: Jawaban Soal 3"

```dart
  Stream<Color> getColors() async* {
    yield* Stream.periodic(
      const Duration(seconds: 1), (int t) {
        int index = t % colors.length;
        return colors[index];
    });
  }
```

fungsi keyword `yield*` adalah untuk menggabungkan stream lain ke dalam stream saat ini. Maksud dari kode tersebut adalah Pertama pada `yield* Stream.periodic(...)` digunakan untuk menghasilkan nilai dari aliran `Stream.periodic` yang menghasilkan warna dari daftar `colors` setiap detik. Dengan kata lain, setiap detik, stream ini akan mengeluarkan warna berdasarkan indeks yang dihitung dari waktu yang telah berlalu. jadi color akan berganti berdasarkan durasi nya

## Soal 4
*Deskripsi dan jawaban soal 4*

## Soal 5
*Deskripsi dan jawaban soal 5*

## Soal 6
*Deskripsi dan jawaban soal 6*

## Soal 7
*Deskripsi dan jawaban soal 7*

## Soal 8
*Deskripsi dan jawaban soal 8*

## Soal 9
*Deskripsi dan jawaban soal 9*

## Soal 10
*Deskripsi dan jawaban soal 10*

## Soal 11
*Deskripsi dan jawaban soal 11*

## Soal 12
*Deskripsi dan jawaban soal 12*