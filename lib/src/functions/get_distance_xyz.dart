
import 'dart:math';

import 'get_distance_xyz_squared.dart';

double getDistanceXYZ(double x1, double y1, double z1, double x2, double y2, double z2) =>
    sqrt(getDistanceXYZSquared(x1, y1, z1, x2, y2, z2));