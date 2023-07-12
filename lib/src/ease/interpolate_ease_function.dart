import 'ease_function.dart';

List<double> interpolateEaseFunction({
  required int length,
  required EaseFunction easeFunction,
}) => List.generate(
  length,
      (i) => easeFunction(i * (1 / length)),
  growable: false,
);
