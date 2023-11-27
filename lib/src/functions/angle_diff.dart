import 'dart:math';

import '../constants/pi2.dart';

double angleDiff(double radianA, double radianB) {
  final diff = (radianB - radianA + pi) % pi2 - pi;
  return ((diff < -pi ? diff + 2 * pi : diff) + pi) % pi2;
}