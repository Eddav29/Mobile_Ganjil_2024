    Function createMultiplier(int factor) {
  return (int x) => x * factor; // Mengikat nilai 'factor' dari lingkup luar
}

void main() {
  var multiplier = createMultiplier(3);
  print(multiplier(4)); // Output: 12
}