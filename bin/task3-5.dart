double calculateCartTotal(
  List<double> price, {
  double discountPercent = 0,
  double taxPercent = 14,
  double deliveryFee = 0,
  bool isMember = false,
  double maxDiscount = 100,
}) {
  double subtotal = 0;
  for (var i = 0; i < price.length; i++) {
    subtotal += price[i];
  }
  if (isMember == true) {
    discountPercent += 5;
  }
  if (discountPercent > maxDiscount) {
    discountPercent = maxDiscount;
  }
  double discount = subtotal * discountPercent / 100;
  double priceAfterDiscount = subtotal - discount;
  double tax = priceAfterDiscount * (taxPercent / 100);
  double total = tax + priceAfterDiscount + deliveryFee;
  return(double.parse(total.toStringAsFixed(2)));
}

void main() {
  print(calculateCartTotal([100, 200, 50])); //

  print(
    calculateCartTotal(
      [100, 200, 50],
      discountPercent: 10,
      taxPercent: 14,
      deliveryFee: 25,
    ),
  );

  print(
    calculateCartTotal(
      [100, 200, 50],
      discountPercent: 10,
      isMember: true,
      maxDiscount: 12,
    ),
  );
}
