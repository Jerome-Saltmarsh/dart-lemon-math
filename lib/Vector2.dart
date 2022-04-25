
import 'distance_between.dart';
import 'dart:math';

import 'pi2.dart';
import 'piHalf.dart';

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

class Vector2 with Position {
  Vector2(double x, double y) {
    this.x = x;
    this.y = y;
  }
}

T findClosest<T extends Position>(List<T> values, double x, double y){
  if (values.isEmpty){
    throw Exception("findClosest.error.values is empty");
  }
  T closest = values[0];
  double closestDistance = distanceBetween(closest.x, closest.y, x, y);

  for(int i = 1; i < values.length; i++){
    T t = values[i];
    double tDistance = distanceBetween(t.x, t.y, x, y);
    if (tDistance < closestDistance){
      closest = t;
      closestDistance = tDistance;
    }
  }
  return closest;
}


