# Laporan Week 12 : Asyncronous Programming

## Informasi Mahasiswa
- **Nama:** Eddo Dava Alfarisi
- **NIM:** 2241720232

## Daftar Isi
- [Laporan Week 12 : Asyncronous Programming](#laporan-week-12--asyncronous-programming)
  - [Informasi Mahasiswa](#informasi-mahasiswa)
  - [Daftar Isi](#daftar-isi)
  - [W12: Soal 1](#w12-soal-1)
    - [Pertanyaan](#pertanyaan)
      - [Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.](#tambahkan-nama-panggilan-anda-pada-title-app-sebagai-identitas-hasil-pekerjaan-anda)
    - [Jawaban](#jawaban)
  - [W12: Soal 2](#w12-soal-2)
    - [Pertanyaan](#pertanyaan-1)
    - [Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan capture milik Anda dan tulis di README pada laporan praktikum. Lalu lakukan commit dengan pesan "W12: Soal 2".](#carilah-judul-buku-favorit-anda-di-google-books-lalu-ganti-id-buku-pada-variabel-path-di-kode-tersebut-caranya-ambil-di-url-browser-anda-seperti-gambar-berikut-inikemudian-cobalah-akses-di-browser-uri-tersebut-dengan-lengkap-seperti-ini-jika-menampilkan-data-json-maka-anda-telah-berhasil-lakukan-capture-milik-anda-dan-tulis-di-readme-pada-laporan-praktikum-lalu-lakukan-commit-dengan-pesan-w12-soal-2)
    - [Jawaban](#jawaban-1)
  - [W12: Soal 3](#w12-soal-3)
    - [Pertanyaan](#pertanyaan-2)
      - [Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!](#jelaskan-maksud-kode-langkah-5-tersebut-terkait-substring-dan-catcherror)
      - [Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 3".](#capture-hasil-praktikum-anda-berupa-gif-dan-lampirkan-di-readme-lalu-lakukan-commit-dengan-pesan-w12-soal-3)
    - [Jawaban](#jawaban-2)
  - [W12: Soal 4](#w12-soal-4)
    - [Pertanyaan](#pertanyaan-3)
    - [Jawaban](#jawaban-3)
  - [W12: Soal 5](#w12-soal-5)
    - [Pertanyaan](#pertanyaan-4)
    - [Jawaban](#jawaban-4)
  - [W12: Soal 6](#w12-soal-6)
    - [Pertanyaan](#pertanyaan-5)
    - [Jawaban](#jawaban-5)
  - [W12: Soal 7](#w12-soal-7)
    - [Pertanyaan](#pertanyaan-6)
    - [Jawaban](#jawaban-6)
  - [W12: Soal 8](#w12-soal-8)
    - [Pertanyaan](#pertanyaan-7)
    - [Jawaban](#jawaban-7)
  - [W12: Soal 9](#w12-soal-9)
    - [Pertanyaan](#pertanyaan-8)
    - [Jawaban](#jawaban-8)
  - [W12: Soal 10](#w12-soal-10)
    - [Pertanyaan](#pertanyaan-9)
    - [Jawaban](#jawaban-9)
  - [W12: Soal 11](#w12-soal-11)
    - [Pertanyaan](#pertanyaan-10)
    - [Jawaban](#jawaban-10)
  - [W12: Soal 12](#w12-soal-12)
    - [Pertanyaan](#pertanyaan-11)
    - [Jawaban](#jawaban-11)
  - [W12: Soal 13](#w12-soal-13)
    - [Pertanyaan](#pertanyaan-12)
    - [Jawaban](#jawaban-12)
  - [W12: Soal 14](#w12-soal-14)
    - [Pertanyaan](#pertanyaan-13)
    - [Jawaban](#jawaban-13)
  - [W12: Soal 15](#w12-soal-15)
    - [Pertanyaan](#pertanyaan-14)
    - [Jawaban](#jawaban-14)
  - [W12: Soal 16](#w12-soal-16)
    - [Pertanyaan](#pertanyaan-15)
    - [Jawaban](#jawaban-15)
  - [W12: Soal 17](#w12-soal-17)
    - [Pertanyaan](#pertanyaan-16)
    - [Jawaban](#jawaban-16)

## W12: Soal 1
### Pertanyaan
#### Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
### Jawaban

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eddo Dava - 2241720232',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FuturePage(),
    );
  }
}
```

## W12: Soal 2
### Pertanyaan
### Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan capture milik Anda dan tulis di README pada laporan praktikum. Lalu lakukan commit dengan pesan "W12: Soal 2".
### Jawaban

![Books](image.png)

## W12: Soal 3
### Pertanyaan
#### Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!
#### Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 3".
### Jawaban

```dart
ElevatedButton(
    child: const Text('Go'),
    onPressed: (){
        setState(() {});
        getData().then((value) {
            result = value.body.toString().substring(0,450);
            setState(() {});
        }).catchError((_){
            result = 'An Error Occured';
            setState(() {});
        });
    },
),
```
<br>
Maksudnya adalah kode tersebut menggunakan `substring` untuk mengambil 450 karakter pertama dari hasil respons `value.body`. Jika terjadi kesalahan saat mengambil data, `catchError` akan menangkap kesalahan tersebut dan mengatur `result` menjadi 'An Error Occured'.
<br>
<br>

<video controls src="20241108-0049-51.1344183.mp4" title="Title"></video>
<br>

## W12: Soal 4
### Pertanyaan
### Jawaban

## W12: Soal 5
### Pertanyaan
### Jawaban

## W12: Soal 6
### Pertanyaan
### Jawaban

## W12: Soal 7
### Pertanyaan
### Jawaban

## W12: Soal 8
### Pertanyaan
### Jawaban

## W12: Soal 9
### Pertanyaan
### Jawaban

## W12: Soal 10
### Pertanyaan
### Jawaban

## W12: Soal 11
### Pertanyaan
### Jawaban

## W12: Soal 12
### Pertanyaan
### Jawaban

## W12: Soal 13
### Pertanyaan
### Jawaban

## W12: Soal 14
### Pertanyaan
### Jawaban

## W12: Soal 15
### Pertanyaan
### Jawaban

## W12: Soal 16
### Pertanyaan
### Jawaban

## W12: Soal 17
### Pertanyaan
### Jawaban