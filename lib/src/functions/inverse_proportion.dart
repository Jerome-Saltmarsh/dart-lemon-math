
double inverseProportion(num a, num b) {
  if (b == 0) {
    throw ArgumentError('Division by zero is not allowed');
  }
  return 1.0 - (a / b);
}
