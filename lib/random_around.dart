

import 'dart:math';

import 'package:lemon_math/adjacent.dart';
import 'package:lemon_math/opposite.dart';
import 'package:lemon_math/randomAngle.dart';

/// Returns a random point on a circle around a position
Point randomAround(double x, double y, double radius){
  double angle = randomAngle();
  return Point(x + adjacent(angle, radius), y + opposite(angle, radius));
}