## Laporan Praktikum

### Nama: Eddo Dava Alfarisi  
### NIM: 2241720232  
### Kelas: 3C  

---

## **Praktikum 1: IF**

### Langkah 1:
```dart
void main() {
  String test = "test2";
    if (test == "test1") {
      print("Test1");
    } else If(test == "test2") {
      print("Test2");
    } else{
      print("Something else");
    }

    if (test == "test2") print("Test2 again");
}
```

**Error:**
Pada baris ke-6, penulisan `If` menggunakan huruf besar yang seharusnya ditulis `if` karena Dart bersifat case-sensitive.

**Perbaikan:**
```dart
void main() {
  String test = "test2";
    if (test == "test1") {
      print("Test1");
    } else if(test == "test2") {
      print("Test2");
    } else{
      print("Something else");
    }

    if (test == "test2") print("Test2 again");
}
```

Tambahan Langkah 3:
```dart
String test = "true";
if (test == "true") {
  print("Kebenaran");
}
```
Pada langkah ini terjadi error karena variabel `test` didefinisikan lagi. Solusinya adalah menggunakan variabel yang sudah ada tanpa mendeklarasikan ulang.

---

## **Praktikum 2: Perulangan While dan Do-While**

### Langkah 1:
```dart
void main() {
    while (counter < 33) {
      print(counter);
      counter++;
    }
}
```

**Error:**  
Variabel `counter` belum diinisialisasi, sehingga perlu penambahan deklarasi variabel.

### Langkah 2:  
Penambahan inisialisasi variabel `counter`.
```dart
void main() {
    int counter = 0;
    while (counter < 33) {
      print(counter);
      counter++;
    }
}
```

### Langkah 3:  
Penambahan perulangan `do-while`.
```dart
void main() {
  int counter = 0;

  while (counter < 33) {
    print(counter);
    counter++;
  }
  
  do {
    print(counter);
    counter++;
  } while (counter < 77);
}
```

---

## **Praktikum 3: Perulangan For dengan Kondisi**

### Langkah 1:
```dart
void main(){
  for (Index = 10; index < 27; index) {
    print(Index);
  }
}
```
**Error:**
1. Variabel `Index` tidak konsisten.
2. Tidak ada increment untuk `index`.

### Langkah 2:
Perbaikan error dengan konsistensi variabel dan penambahan increment.
```dart
void main(){
  for (int Index = 10; Index < 27; Index++) {
    print(Index);
  }
}
```

### Langkah 3:  
Penambahan kondisi `break` dan `continue`.
```dart
void main(){
  for (int Index = 10; Index < 27; Index++) {
    if (Index == 21) break;
    else if (Index > 1 || Index < 7) continue;
    print(Index);
  }
}
```

---

## **Tugas: Menampilkan Bilangan Prima dari 0 hingga 201**

### Kode Program:
```dart
void main() {
  String namaLengkap = "Eddo Dava Alfarisi";
  String NIM = "2241720232";

  print("Bilangan prima dari 0 sampai 201:");
  for (int i = 2; i <= 201; i++) {
    bool prima = true;
    
    // Mengecek apakah angka i merupakan bilangan prima
    for (int j = 2; j <= i ~/ 2; j++) {
      if (i % j == 0) {
        prima = false;
        break;
      }
    }

    // Jika prima, cetak angka dan informasi
    if (prima) {
      print("$i adalah bilangan prima. Nama: $namaLengkap, NIM: $NIM");
    }
  }
}
```

### Penjelasan:
Pada tugas ini, program akan mencetak bilangan prima dari 0 hingga 201. Bilangan prima adalah bilangan yang hanya dapat dibagi oleh 1 dan dirinya sendiri. Program menggunakan perulangan `for` untuk memeriksa setiap bilangan dari 2 hingga 201. Jika sebuah bilangan adalah prima, program akan mencetaknya beserta nama dan NIM.