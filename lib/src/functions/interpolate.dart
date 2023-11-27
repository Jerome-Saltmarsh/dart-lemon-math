
/// @t a decimal between 0 and 1
double interpolate(num start, num end, double t) =>
    (start * (1.0 - t) + end * t);

