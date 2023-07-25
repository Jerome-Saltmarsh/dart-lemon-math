import 'dart:math';

import '../constants/pi2.dart';

num angleDiff(double angleA, double angleB) {
  final diff = (angleA - angleB).abs();
  if (diff < pi) {
    return diff;
  }
  return pi2 - diff;
}
