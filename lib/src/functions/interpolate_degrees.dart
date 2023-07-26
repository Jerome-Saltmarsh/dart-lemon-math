int interpolateDegrees(int a, int b, double i) {
  final diff = ((b - a + 180) % 360) - 180;

  if (diff >= 0) {
    return (a + (diff * i)).toInt() % 360;
  }
  return (a - (-diff * i)).toInt() % 360;
}
