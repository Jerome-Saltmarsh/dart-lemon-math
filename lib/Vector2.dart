
import 'distance_between.dart';

class Vector2{
  double x;
  double y;
  Vector2(this.x, this.y);
  bool get isZero => x == 0 && y == 0;
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


