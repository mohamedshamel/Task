double calculateOrder(
  double price,
  int quantity, {
  double discount = 0,
  double deliveryFee = 0,
}) {
  double resultbefordiscount = ((price * quantity) + deliveryFee);
  double r = resultbefordiscount - (resultbefordiscount * discount);
  return r;
}

void main() {
  print(calculateOrder(100, 12, discount: .25));
}
