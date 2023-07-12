import 'dart:math';

double getDistanceXYSquared(double x1, double y1, double x2, double y2) =>
    pow(x1 - x2, 2) +
    pow(y1 - y2, 2).toDouble();