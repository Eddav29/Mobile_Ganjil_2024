//Langkah 1
/*void main() {
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
*/
//Langkah 1 error dikarenakan pada baris ke 6 penulisan If seharusnya if karena keyword dart case sensitive
//perbaikan pada baris ke 6
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
    //tambahan langkah3
    /*String test = "true";
    if (test) {
      print("Kebenaran");
    }*/ 
    //error dikarenakan pada baris ke ke 29 variable test didefinisikan lagi seharusnya tidak perlu
    //perbaikan pada baris ke 29
    if (test == "true") {
      print("Kebenaran");
    }
}
