## Laporan Praktikum pertemuan 3

### Nama: Eddo Dava Alfarisi  
### NIM: 2241720232  
### Kelas: 3C  

---
# Dart Programming Practicum and Task

## Table of Contents
1. [Praktikum 1](#praktikum-1)
2. [Praktikum 2](#praktikum-2)
3. [Praktikum 3](#praktikum-3)
4. [Praktikum 4](#praktikum-4)
5. [Praktikum 5](#praktikum-5)
6. [Tugas](#tugas)

---

## Praktikum 1

### Langkah 1:
```dart
void main() {
  var list = [1, 2, 3];
  assert(list.length == 3);  // Memastikan panjang list adalah 3
  assert(list[1] == 2);  // Memastikan elemen pada index 1 adalah 2
  print(list.length);  // Output: 3
  print(list[1]);  // Output: 2

  list[1] = 1;  // Mengubah elemen pada index 1 menjadi 1
  assert(list[1] == 1);  // Memastikan nilai sudah diubah
  print(list[1]);  // Output: 1
}
```

### Penjelasan:
Kode di atas membuat list sederhana dan melakukan beberapa perubahan serta pengecekan menggunakan `assert` untuk memvalidasi panjang list dan nilai dari elemen tertentu. Setelah mengubah nilai pada indeks 1, nilai yang baru langsung dicetak.

---

### Langkah 3: Perbaikan Error
```dart
final List<String?> list = List.filled(5, null);
list[1] = 'Eddo Dava Alfarisi';  // Mengisi nama pada index 1
list[2] = '2241720232';  // Mengisi NIM pada index 2
print(list);
```

### Penjelasan:
Kode di atas memperbaiki masalah ketika kita mencoba memasukkan string ke dalam `List` yang diinisialisasi dengan `null`. Kita harus mendeklarasikan tipe data list dengan `List<String?>` untuk memungkinkan elemen null dan string. Ini akan menghindari error tipe data.

---

## Praktikum 2

### Langkah 1:
```dart
void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
}
```

### Penjelasan:
Kode ini membuat sebuah **Set** dengan nama `halogens` yang berisi lima elemen. **Set** adalah kumpulan elemen yang tidak berurutan dan tidak memiliki elemen yang duplikat. 

### Langkah 3:
```dart
var names1 = <String>{};
Set<String> names2 = {};  // Cara lain mendeklarasikan Set
var names3 = {};  // Membuat Map, bukan Set.
names1.add("Eddo Dava Alfarisi");
names2.add("2241720232");
print(names1);  // Output: {'Eddo Dava Alfarisi'}
print(names2);  // Output: {'2241720232'}
print(names3);  // Output: {}
```

### Penjelasan:
Pada langkah ini, beberapa cara mendeklarasikan **Set** di Dart diperkenalkan, termasuk penggunaan `{}` yang tanpa tipe data eksplisit akan membuat sebuah **Map** alih-alih **Set**. 

---

## Praktikum 3

### Langkah 1 dan 2:
```dart
void main() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };
  
  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);
}
```

### Penjelasan:
Kode ini mendemonstrasikan cara menggunakan **Map** di Dart, yaitu struktur data yang memetakan **key** ke **value**. `gifts` dan `nobleGases` adalah dua contoh **Map** dengan berbagai tipe data sebagai **key** dan **value**.

### Langkah 3:
```dart
var mhs1 = Set<String>();
mhs1.add("Eddo Dava Alfarisi");
mhs1.add("2241720232");

var mhs2 = Set<int>();
mhs2.add(2);
mhs2.add(10);
mhs2.add(18);

gifts['fifth'] = 'golden rings';
nobleGases[18] = 'argon';

print(gifts);
print(nobleGases);
print("Mahasiswa 1: $mhs1");
print("Mahasiswa 2: $mhs2");
```

### Penjelasan:
Pada langkah ini, nilai di dalam **Map** dan **Set** dimodifikasi, serta ditambahkan elemen baru. Hasil akhirnya adalah output **Set** dan **Map** yang sudah diperbarui.

---

## Praktikum 4

### Langkah 1 dan 2:
```dart
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];  // Menggunakan operator spread untuk memasukkan semua elemen dari list
  print(list2);
  print(list2.length);  // Output: 4
}
```

### Penjelasan:
Di sini kita menggunakan operator **spread** (`...`) untuk menyebarkan elemen-elemen dari list ke dalam list baru. Hal ini memungkinkan kita untuk menambahkan elemen dari list lain secara efisien.

---

## Praktikum 5

### Langkah 1:
```dart
void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);
}
```

### Penjelasan:
Kode ini menggunakan **Record**, tipe data yang memungkinkan untuk menyimpan beberapa nilai berbeda dalam satu variabel. Nilai-nilai dalam record bisa diakses dengan menggunakan nama atau posisi.

### Langkah 3:
```dart
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

var result = tukar((1, 2));
print(result);  // Output: (2, 1)
```

### Penjelasan:
Fungsi ini menerima sebuah **Record** berisi dua elemen, lalu menukar posisi kedua elemen tersebut dan mengembalikannya sebagai record baru. Record dapat digunakan untuk mengembalikan beberapa nilai dari sebuah fungsi.

---

## Tugas

### 2. Jelaskan yang dimaksud Functions dalam bahasa Dart!
Functions dalam Dart adalah blok kode yang dapat dipanggil untuk melakukan tugas tertentu. Mereka dapat menerima input berupa parameter dan mengembalikan output. Fungsi adalah komponen penting untuk modularitas dan reuse kode.

**Contoh Function sederhana:**
```dart
int tambah(int a, int b) {
  return a + b;
}

void main() {
  print(tambah(5, 3));  // Output: 8
}
```

### 3. Jenis-jenis parameter di Functions beserta contoh sintaksnya:
1. **Positional Parameter**: Parameter yang wajib diisi dalam urutan tertentu.
2. **Named Parameter**: Parameter yang bisa diisi berdasarkan namanya.
3. **Optional Parameter**: Parameter yang bisa diabaikan atau memiliki nilai default.

**Contoh Sintaks:**
```dart
// Positional Parameter
void contohPositional(int a, int b) {
  print(a + b);
}

// Named Parameter
void contohNamed({required int a, required int b}) {
  print(a + b);
}

// Optional Parameter
void contohOptional(int a, [int? b]) {
  print(b != null ? a + b : a);
}
```

### 4. Functions sebagai first-class objects
Dalam Dart, functions adalah objek first-class, artinya mereka bisa disimpan dalam variabel, diteruskan sebagai argumen ke fungsi lain, atau dikembalikan dari fungsi.

**Contoh:**
```dart
void main() {
  var myFunction = (int a, int b) => a + b;
  print(myFunction(4, 6));  // Output: 10
}
```

### 5. Anonymous Functions
Anonymous functions (fungsi anonim) adalah fungsi yang tidak diberi nama dan biasanya digunakan saat fungsi hanya diperlukan untuk tugas sementara, seperti callback dalam list atau collection.

**Contoh:**
```dart
void main() {
  var list = [1, 2, 3];
  list.forEach((item) {
    print(item * 2); // Output: 2, 4, 6
  });
}
```

### 6. Lexical Scope dan Lexical Closures

- **Lexical Scope** adalah aturan yang menentukan di mana variabel bisa diakses di dalam fungsi, berdasarkan tempat deklarasi variabel di kode.
- **Lexical Closures** adalah fungsi yang mengikat variabel dari lingkup luar meskipun fungsi telah keluar dari lingkup aslinya.

**Contoh Lexical Closure:**
```dart
Function createMultiplier(int factor) {
  return (int x) => x * factor;
}

void main() {
  var multiplier = createMultiplier(3);
  print(multiplier(5));  // Output: 15
}
```

### 7. Cara membuat return multiple value di Functions
Dart tidak mendukung return multiple values secara langsung, tetapi kita bisa menggunakan **List**, **Map**, atau

 **Record** untuk mengembalikan beberapa nilai sekaligus.

**Contoh dengan List:**
```dart
List<int> getValues() {
  return [1, 2, 3];
}

void main() {
  var values = getValues();
  print(values);  // Output: [1, 2, 3]
}
```

**Contoh dengan Record:**
```dart
(String, int) getInfo() {
  return ('Eddo', 2241720232);
}

void main() {
  var info = getInfo();
  print(info);  // Output: ('Eddo', 2241720232)
}
```

---

### Link Commit Repo GitHub
Semua solusi telah diimplementasikan dalam kode dan dapat diakses melalui repository GitHub pada commit berikut: [Link Commit GitHub](#).

