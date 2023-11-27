import 'dart:math';

double getDistanceXYZSquared(
    double x1,
    double y1,
    double z1,
    double x2,
    double y2,
    double z2,
) =>
    pow(x1 - x2, 2) +
    pow(y1 - y2, 2) +
    pow(z1 - z2, 2).toDouble();