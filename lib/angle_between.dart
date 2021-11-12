import 'angle.dart';

/// Returns the angle in radians between two positions
double angleBetween(double x1, double y1, double x2, double y2) {
  return angle(x1 - x2, y1 - y2);
}