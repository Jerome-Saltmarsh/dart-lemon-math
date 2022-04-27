import 'dart:math';

import 'constants.dart';



/// Angle in radians
double getAdjacent(double angle, double magnitude){
  return -cos(angle + piHalf) * magnitude;
}
