
int interpolateByteCyclic(int a, int b, double i) {
  assert(a >= 0 && a <= 255);
  assert(b >= 0 && b <= 255);
  assert(i >= 0 && i <= 1);
  var diff = b - a;
  if (diff.abs() > 128) {
    diff = -diff.sign * (256 - diff.abs());
  }
  return (a + diff * i).round() % 256;
}