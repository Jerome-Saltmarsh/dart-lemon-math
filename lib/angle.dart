import 'dart:math';

import 'pi2.dart';

/// radians
double angle(double adjacent, double opposite) {
  if (adjacent < 0)
  {
    return -atan2(adjacent, opposite);
  }
  return pi2 - atan2(adjacent, opposite);
}