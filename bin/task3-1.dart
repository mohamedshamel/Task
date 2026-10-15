double calculateTotal(double price, int quantity) {
  return price * quantity;
}

void main() {
  double p = 50.0;
  int q = 3;
  print(calculateTotal(p, q));
}
