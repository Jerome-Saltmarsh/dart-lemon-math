T interpolate<T extends num>(
  T start,
  T end,
  double t,
) {
  final value = (start * (1.0 - t) + end * t);
  return ((T == int) ? (value.toInt()) : value) as T;
}