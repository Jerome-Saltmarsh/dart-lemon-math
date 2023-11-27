

int linearInterpolateInt(int a, int b, double t) =>
  (a * (1.0 - t) + b * t).toInt();