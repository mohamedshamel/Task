List<int> filterNumbers(
  List<int> numbers, {
  int min = 0,
  int max = 100,
  bool includeEven = true,
}) {
  List<int> r = [];
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] >= 0 && numbers[i] <= 100) {
      if (includeEven == false || numbers[i] % 2 == 0) {
        r.add(numbers[i]);
      }
    }
  }
  return r;
}

void main() {
  print(filterNumbers([1, 2, 5, 8, 12, 15], min: 2, max: 12,includeEven: false));
}
