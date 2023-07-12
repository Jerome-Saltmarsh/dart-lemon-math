import 'ease_type.dart';
import 'get_ease_function.dart';
import 'interpolate_ease_function.dart';

List<double> interpolateEaseType({
  required int length,
  required EaseType easeType,
}) => interpolateEaseFunction(
    length: length,
    easeFunction:  getEaseTypeFunction(easeType),
);

