double interpolate(
  num start,
  num end,
  double t,
) =>
    start * (1.0 - t) + end * t;