double interpolateDouble({required double start, required double end, required double t}) =>
    (start * (1.0 - t) + end * t);