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
