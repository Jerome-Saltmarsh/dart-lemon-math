import 'dart:math';

import 'piHalf.dart';

double opposite(double angle, double magnitude) {
  return -sin(angle + piHalf) * magnitude;
}