
import 'dart:math' as math;

int getHue(int r, int g, int b) {
  double hue = 0;
  final max = math.max(math.max(r, g), b).toDouble();
  final min = math.min(math.min(r, g), b).toDouble();
  final delta = max - min;

  if (delta == 0) {
    hue = 0;
  } else if (max == r) {
    hue = ((g - b) / delta) % 6;
  } else if (max == g) {
    hue = (b - r) / delta + 2;
  } else {
    hue = (r - g) / delta + 4;
  }

  hue *= 60;

  if (hue < 0) {
    hue += 360;
  }

  return hue.round();
}