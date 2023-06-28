
import 'dart:math';

/// measures the distance of a 3d point from the origin
double hyp3(num x, num y, num z) =>
    sqrt(pow(x, 2) + pow(y, 2) + pow(z, 2));