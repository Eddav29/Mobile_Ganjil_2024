void main() {
  // langkah 1
  var gifts = {
    // Key:    Value
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
  print("");
  print(nobleGases);
  print("");
  print("----------------------------------------------------------------");

  // langkah 2
  // penjelasan kode di atas adalah kode di atas merupakan contoh implementasi maps yaitu 
  // berbentuk objek yang memiliki keys dan value

  // langkah 3
  var mhs1 = Set<String>();
  mhs1.add("Eddo Dava Alfarisi");
  mhs1.add("2241720232");

  var mhs2 = Set<int>();
  mhs2.add(2);
  mhs2.add(10);
  mhs2.add(18);

  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  print(gifts);
  print("");
  print(nobleGases);
  print("");
  
  print("Data Mahasiswa 1: ");
  print(mhs1);
  print("");
  print("Data Mahasiswa 2: ");
  print(mhs2);
  print("");
}
