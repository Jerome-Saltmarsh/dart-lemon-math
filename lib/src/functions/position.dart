
import 'dart:math';

import 'package:lemon_math/src.dart';

mixin Position {
  var x = 0.0;
  var y = 0.0;

  double get sum => x + y;

  bool get isZero => x == 0 && y == 0;

  double getDistance(Position other) =>
      getDistanceXY(other.x, other.y);

  double getDistanceXY(double x, double y) =>
      distanceBetween(this.x, this.y, x, y);

  void moveTowards(Position that, double distance) =>
      move(getAngle(that), distance);

  double getAngle(Position other) =>
      angleBetween(x, y, other.x, other.y);

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
