import 'dart:math';

import 'constants.dart';

/// radians
double getAngle(double adjacent, double opposite) {
  if (adjacent < 0)
  {
    return -atan2(adjacent, opposite);
  }
  return pi2 - atan2(adjacent, opposite);
}