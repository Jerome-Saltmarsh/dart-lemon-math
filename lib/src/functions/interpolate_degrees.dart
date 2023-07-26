double interpolateDegrees(num a, num b, double i) {
  final diff = ((b - a + 180) % 360) - 180;

  if (diff >= 0) {
    return (a + (diff * i)) % 360;
  }
  return (a - (-diff * i)) % 360;
}
