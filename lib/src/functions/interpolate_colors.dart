


import 'get_alpha.dart';
import 'rgba.dart';
import 'interpolate.dart';

int interpolateColors(int colorA, int colorB, double i) {

  if (i < 0.0 || i > 1.0) {
    throw ArgumentError('Parameter "i" must be between 0 and 1 inclusive.');
  }

  final redA = (colorA >> 16) & 0xFF;
  final greenA = (colorA >> 8) & 0xFF;
  final blueA = colorA & 0xFF;

  final redB = (colorB >> 16) & 0xFF;
  final greenB = (colorB >> 8) & 0xFF;
  final blueB = colorB & 0xFF;

  final colorAAlpha = getAlpha(colorA);
  final colorBAlpha = getAlpha(colorB);

  final interpolatedRed = (redA + (i * (redB - redA))).round();
  final interpolatedGreen = (greenA + (i * (greenB - greenA))).round();
  final interpolatedBlue = (blueA + (i * (blueB - blueA))).round();

  return rgba(
    r: interpolatedRed,
    g: interpolatedGreen,
    b: interpolatedBlue,
    a: interpolate(colorAAlpha, colorBAlpha, i).toInt(),
  );
}

