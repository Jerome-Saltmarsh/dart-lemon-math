import 'dart:math';
import '../constants/pi2.dart';

double angleDiff(double angleA, double angleB) {
  // assert(angleA >= 0 && angleA <= 2 * pi);
  // assert(angleB >= 0 && angleB <= 2 * pi);
  angleA = angleA % pi2;
  angleB = angleB % pi2;
  
  var diff = (angleB - angleA) % (pi2);
  if (diff > pi) {
    diff -= pi2;
  } else if (diff < -pi) {
    diff += pi2;
  }
  return diff;
}