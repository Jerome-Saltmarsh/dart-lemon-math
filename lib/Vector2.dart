
import 'distance_between.dart';
import 'dart:math';

class Vector2 {
  double x;
  double y;
  Vector2(this.x, this.y);
  bool get isZero => x == 0 && y == 0;

  double getDistance(Vector2 other) {
    final a = x - other.x;
    final b = y - other.y;
    return sqrt((a * a) + (b * b));
  }

  double getAngle(Vector2 other) {
    const pi2 = pi * 2;
    final adjacent = x - other.x;
    if (adjacent < 0) {
      return -atan2(adjacent, y - other.y);
    }
    return pi2 - atan2(adjacent, y - other.y);
  }

  void move(double angle, double distance) {
    const piHalf = pi * 0.5;
    x -= cos(angle + piHalf) * distance;
    y -= sin(angle + piHalf) * distance;
  }

  double get length {
    return sqrt((x * x) + (y * y));
  }
}

T findClosest<T extends Vector2>(List<T> values, double x, double y){
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


