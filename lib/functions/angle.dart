import 'dart:math';

import '../constants/pi2.dart';

/// radians
double getAngle(double adjacent, double opposite) {
  final angle = atan2(opposite, adjacent);
  if (angle < 0){
    return pi2 + angle;
  }
  return angle;
}