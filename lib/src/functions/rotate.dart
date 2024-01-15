
import 'dart:math';

/// returns the x position of a vector rotated around the origin by the given radian
double getRotationX(num x, double y, num radian) =>
    x * cos(radian) - y * sin(radian);

/// returns the y position of a vector rotated around the origin by the given radian
double getRotationY(num x, num y, double radian) =>
    x * sin(radian) + y * cos(radian);