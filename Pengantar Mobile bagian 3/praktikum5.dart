void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);
  /**
   * record ini berisi beberapa elemen yang bisa terdiri dari nilai yang tidak diberi nama dan juga elemen yang diberi nama.
   'first' dan 'last' adalah elemen tanpa nama (positional elements).
    a: 2 dan b: true adalah elemen dengan nama (named elements).
    jadi untuk print nya berurut berdasarkan jenis tersebut 
   */
  //lamglah 3
  (int, int) tukar((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }
  //pengecekkan
  var result = tukar((1, 2));
  print(result); // Output: (2, 1)
  
  //langkah4
  // Record type annotation in a variable declaration:
// (String, int) mahasiswa;
// print(mahasiswa);
//terjadi error dikarenakan tidak adanya deklarasi
 // Deklarasi dan inisialisasi variabel dengan tipe record
 //berikut penyelesaiinyya
  (String, int) mahasiswa = ('Eddo', 2241720232);
  \
  // Mencetak variabel mahasiswa
  print(mahasiswa); // Output: (Eddo, 2241720232)

  //langkah6
  var mahasiswa2 = ('Eddo Dava', a: 2, b: true, '2241720232');

print(mahasiswa2.$1); // Prints 'first'
print(mahasiswa2.a); // Prints 2
print(mahasiswa2.b); // Prints true
print(mahasiswa2.$2); // Prints 'last'
}