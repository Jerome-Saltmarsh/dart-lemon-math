import 'get_red.dart';
import 'get_green.dart';
import 'get_blue.dart';
import 'get_alpha.dart';
import 'rgba.dart';
import 'interpolate.dart';

int interpolateColors(int colorA, int colorB, double i) {
  assert (i >= 0 && i <= 1.0);

  final redA = getRed(colorA);
  final greenA = getGreen(colorA);
  final blueA = getBlue(colorA);

  final redB = getRed(colorB);
  final greenB = getGreen(colorB);
  final blueB = getBlue(colorB);

  final alphaA = getAlpha(colorA);
  final alphaB = getAlpha(colorB);

  return rgba(
    r: interpolate(redA, redB, i).toInt(),
    g: interpolate(greenA, greenB, i).toInt(),
    b: interpolate(blueA, blueB, i).toInt(),
    a: interpolate(alphaA, alphaB, i).toInt(),
  );
}

