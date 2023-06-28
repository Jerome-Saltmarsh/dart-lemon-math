import 'dart:math';

import 'package:lemon_math/src.dart';


/// measures the angle in radians of a triangle
double rad(double adjacent, double opposite) => atan2(opposite, adjacent) % pi2;