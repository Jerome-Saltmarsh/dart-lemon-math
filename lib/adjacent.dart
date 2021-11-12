import 'dart:math';

import 'piHalf.dart';

/// Angle in radians
double adjacent(double angle, double magnitude){
  return -cos(angle + piHalf) * magnitude;
}
