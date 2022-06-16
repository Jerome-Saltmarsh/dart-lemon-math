
import 'dart:math';

import 'package:lemon_math/constants/pi2.dart';
import 'package:lemon_math/constants/pi_half.dart';

mixin Position {
  var x = 0.0;
  var y = 0.0;

  bool get isZero => x == 0 && y == 0;

  double getDistance(Position other) {
    final a = x - other.x;
    final b = y - other.y;
    return sqrt((a * a) + (b * b));
  }

  double getDistanceXY(double x, double y) {
    final a = this.x - x;
    final b = this.y - y;
    return sqrt((a * a) + (b * b));
  }

  double getAngle(Position other) {
    final adjacent = x - other.x;
    if (adjacent < 0) {
      return -atan2(adjacent, y - other.y);
    }
    return pi2 - atan2(adjacent, y - other.y);
  }

  void moveTowards(Position that, double distance){
    move(getAngle(that), distance);
  }

  void move(double angle, double distance) {
    x -= cos(angle + piHalf) * distance;
    y -= sin(angle + piHalf) * distance;
  }

  double getPositionX(double angle, double distance) {
    return x - (cos(angle + piHalf) * distance);
  }

  double getPositionY(double angle, double distance) {
    return y - (sin(angle + piHalf) * distance);
  }

  double get length {
    return sqrt((x * x) + (y * y));
  }

  void rotateAround(Position that, double angle) {
    final moveDistance = getDistance(that);
    final moveAngle = that.getAngle(this) + angle;
    x = that.getPositionX(moveAngle, moveDistance);
    y = that.getPositionY(moveAngle, moveDistance);
  }
}
