void main() {
  var list = [1, 2, 3];//inisialisasi list
  var list2 = [0, ...list];//inisialisasi list dengan operator sphread
  // print(list1);
  //langkah 2 perbaika error
  print(list);
  print(list2);
  print(list2.length);

  //langkah 3
  // list1 = [1, 2, null];
  // print(list1);
  // var list3 = [0, ...?list1];
  // print(list3.length);
  // langkah diatas error dibawah ini adalah perbaikannya
  List<int?> list1 = [1, 2, null];
  print(list);
  var list3 = [0, ...?list];
  print(list3.length);

  //langkah 4
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);
  // langkah diatas error dibawah ini adalah perbaikannya
  var promoActive = true;
  // var nav = ['Home', 'Furniture', 'Plants', 'Outlet'];//error dibawah ini adalah perbaikannya
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
  
  //langkah 5
  // var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  // print(nav2);
  // langkah diatas error dibawah ini adalah perbaikannya 
  var loginCase = 'Manager';
  // var nav2 = ['Home', 'Furniture', 'Plants', 'Inventory'];//error dibawah ini adalah perbaikannya
  var nav2 = ['Home', 'Furniture', 'Plants', if (loginCase == 'Manager') 'Inventory'];
  print(nav2);

  //langkah 5
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];//inisialisasi listOfStrings dengan collection for
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);

//   listOfStrings adalah sebuah list yang berisi beberapa elemen, salah satunya didefinisikan secara statis dan yang lainnya dihasilkan secara dinamis menggunakan collection for.
// Elemen pertama adalah '#0', yang secara langsung didefinisikan di dalam list.
// Kemudian, bagian for (var i in listOfInts) digunakan untuk melakukan iterasi terhadap setiap elemen di listOfInts.
// Setiap elemen i dari listOfInts diambil, dan untuk setiap nilai i, string '#$i' ditambahkan ke dalam listOfStrings.
// Misalnya, ketika i = 1, string '#1' ditambahkan, dan seterusnya.
// collection for 
}
