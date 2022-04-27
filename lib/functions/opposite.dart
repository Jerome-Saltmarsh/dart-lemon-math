import 'dart:math';

import 'constants.dart';

double opposite(double angle, double magnitude) {
  return -sin(angle + piHalf) * magnitude;
}