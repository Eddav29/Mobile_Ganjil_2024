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
Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
Lakukan commit hasil jawaban Soal 4 dengan pesan "W13: Jawaban Soal 4"

![Hasil Praktikum Soal 4](soal4.gif)

## Soal 5
Jelaskan perbedaan menggunakan listen dan await for (langkah 9) !
Lakukan commit hasil jawaban Soal 5 dengan pesan "W13: Jawaban Soal 5"


```dart
  void changeColor() async{
    await for (var eventColor in colorStream.getColors()){
        setState(() {
           bgColor = eventColor;
        ```dart
            void changeColor() async{
                await for (var eventColor in colorStream.getColors()){
                        setState(() {
                             bgColor = eventColor;
                        });
                    }
                }

            void changeColor(){
                colorStream.getColors().listen((eventColor) {
                    setState(() {
                        bgColor = eventColor;
                    });
                });
            }
```

Perbedaan `await for` dengan `listen` adalah:

- `await for` digunakan untuk menunggu setiap event dari stream secara asynchronous dalam sebuah loop. Ini memungkinkan untuk menggunakan `await` di dalam loop untuk menunggu setiap event sebelum melanjutkan ke iterasi berikutnya.
- `listen` digunakan untuk mendaftarkan callback yang akan dipanggil setiap kali stream menghasilkan event baru. Ini tidak memblokir eksekusi kode berikutnya dan memungkinkan  untuk menangani event secara reaktif.

Jadi `await for`, itu menunggu setiap event secara berurutan, sementara `listen`, itu merespons event saat event datang tanpa menunggu. 

## Soal 6
Jelaskan maksud kode langkah 8 dan 10 tersebut!
Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
Lalu lakukan commit dengan pesan "W13: Jawaban Soal 6".

![Hasil Praktikum Soal 6](soal6.gif)

Langkah 8: initState()
Inisialisasi stream untuk mendengarkan angka baru dari NumberStream. Setiap kali angka baru masuk, nilai lastNumber diperbarui dengan setState, sehingga UI menampilkan angka terbaru.

Langkah 10: addRandomNumber()
Fungsi ini menghasilkan angka acak (0–9) dan mengirimkannya ke stream. Setiap kali fungsi ini dipanggil (misalnya saat tombol ditekan), angka baru akan muncul di UI.

## Soal 7
Jelaskan maksud kode langkah 13 sampai 15 tersebut!
Kembalikan kode seperti semula pada Langkah 15, comment addError() agar Anda dapat melanjutkan ke praktikum 3 berikutnya.
Lalu lakukan commit dengan pesan "W13: Jawaban Soal 7".

Langkah 13: Tambahkan addError di stream.dart
Fungsi addError() ditambahkan untuk memasukkan pesan error ke dalam Stream menggunakan controller.sink.addError('error');. Ini memungkinkan kita untuk mengirim error secara manual ke stream.

Langkah 14: Tambahkan onError di main.dart
Di dalam initState(), onError digunakan untuk menangani error pada stream. Jika error terjadi, lastNumber akan di-set ke -1, dan UI akan di-update dengan nilai ini, sebagai indikasi bahwa ada error.

Langkah 15: Edit addRandomNumber()
Pada langkah ini, dua baris yang menghasilkan dan menambahkan angka acak dikomentari. Sebagai gantinya, numberStream.addError() dipanggil untuk memasukkan error ke dalam stream saat tombol ditekan, sehingga onError di langkah 14 akan menangani error tersebut.

## Soal 8
Jelaskan maksud kode langkah 1-3 tersebut!
Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
Lalu lakukan commit dengan pesan "W13: Jawaban Soal 8".

![Hasil Praktikum Soal 8](soal8.gif)

Langkah 1: Deklarasi StreamTransformer
Pada langkah ini, sebuah variabel transformer dengan tipe StreamTransformer dideklarasikan di dalam kelas _StreamHomePageState. StreamTransformer digunakan untuk mengubah data yang masuk ke stream sebelum diterima oleh listener.

Langkah 2: Inisialisasi transformer di initState
transformer diinisialisasi dengan StreamTransformer.fromHandlers yang memiliki tiga bagian:

handleData: Memproses setiap data yang diterima di stream, dalam hal ini mengalikan nilai dengan 10 sebelum mengirimnya ke sink.
handleError: Menangani error dengan menambahkan nilai -1 ke sink jika terjadi error.
handleDone: Menutup sink saat stream selesai (stream ditutup).
Langkah 3: Menggunakan transformer pada stream.listen
Stream menggunakan transformer untuk memproses data sebelum diterima listener. Saat data diterima, nilai diperbarui di lastNumber. Jika terjadi error, onError akan men-set lastNumber ke -1.

## Soal 9
*Deskripsi dan jawaban soal 9*

## Soal 10
*Deskripsi dan jawaban soal 10*

## Soal 11
*Deskripsi dan jawaban soal 11*

## Soal 12
*Deskripsi dan jawaban soal 12*

