void main() {
  int a = 10;

  void printA() {
    print(a); // Bisa mengakses variabel 'a' karena lexical scoping
  }

  printA(); // Output: 10
}
