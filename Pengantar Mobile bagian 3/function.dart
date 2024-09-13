// Positional Parameter
void contohPositional(int a,int b) {
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

void main() {
  contohPositional(3, 4);     // Output: 7
  contohNamed(a: 3, b: 4);    // Output: 7
  contohOptional(3);          // Output: 3
  contohOptional(3, 5);       // Output: 8
}
