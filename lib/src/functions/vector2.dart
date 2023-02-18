
import 'distance_between.dart';
import 'position.dart';


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


