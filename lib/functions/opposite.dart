import 'dart:math';

import 'constants.dart';

double getOpposite(double angle, double magnitude) {
  return -sin(angle + piHalf) * magnitude;
}