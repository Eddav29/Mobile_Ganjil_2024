void main() {
  var myFunction = (int a, int b) {
    return a + b;
  };

  print(myFunction(5, 6));  // Output: 11

  // Fungsi sebagai argumen
  void calculate(int a, int b, Function operation) {
    print(operation(a, b));
  }

  calculate(3, 4, myFunction);  // Output: 7
}
