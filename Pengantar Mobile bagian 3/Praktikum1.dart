//langkah 1
// void main(){
//   var list = [1, 2, 3];
//   assert(list.length == 3);
//   assert(list[1] == 2);
//   print(list.length);
//   print(list[1]);

//   list[1] = 1;
//   assert(list[1] == 1);
//   print(list[1]);

// }
// langkah 2 
// Silakan coba eksekusi (Run) kode pada langkah 1 
//tersebut. Apa yang terjadi? Jelaskan
/**
 * Jawaban:
 * pertama, kita membuat sebuah array list yang berisi angka 1, 2, dan 3.
 * Kemudian, kita melakukan pengecekan panjang array list (list.length) dan nilai yang berada di indeks 1 (list[1]).
 * Output: 3, 2
 *
 * setelah itu, kita mengubah nilai yang ada di indeks 1 (list[1]) menjadi 1.
 * Kemudian, kita melakukan pengecekan ulang nilai yang berada di indeks 1 (list[1]).
 * Output: 1
 */

//langkah 3
// void main() {
//   final list = List.filled(5, null); // Membuat list dengan ukuran 5 dan default value null
//   list[1] = 'Eddo Dava Alfarisi'; // Memasukkan nama pada index ke-1
//   list[2] = '2241720232'; // Memasukkan NIM pada index ke-2

//   print(list); // Mencetak seluruh elemen dari list
// }
/**
 * Masalah tersebut terjadi karena Anda mencoba memasukkan nilai String ke dalam List yang diinisialisasi dengan
 *  nilai null tanpa menentukan tipe data dari lis
 */
//perbaikam error 
void main() {
  final List<String?> list = List.filled(5, null); // Menentukan tipe List<String?>
  list[1] = 'Eddo Dava Alfarisi'; // Memasukkan nama pada index ke-1
  list[2] = '2241720232'; // Memasukkan NIM pada index ke-2

  print(list); // Mencetak seluruh elemen dari list
}
