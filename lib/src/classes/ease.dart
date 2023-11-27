import 'dart:math';

class EaseFunctions {
  static double inSine(double x) => 1 - cos((x * pi) * 0.5);

  static double outSine(double x) => sin((x * pi) * 0.5);

  static double inOutSine(double x) => -(cos(pi * x) - 1) / 2;

  static double inQuad(double x) => x * x;

  static double outQuad(double x) => 1 - (1 - x) * (1 - x);

  static double inOutQuad(double x) =>
      x < 0.5 ? 2 * x * x : 1 - pow(-2 * x + 2, 2) / 2;

  static double inCubic(double x) => x * x * x;

  static double outCubic(double x) => 1.0 - pow(1.0 - x, 3);

  static double inOutCubic(double x) =>
      x < 0.5 ? 4 * x * x * x : 1 - pow(-2 * x + 2, 3) / 2;

  static double inQuart(double x) => x * x * x * x;

  static double outQuart(double x) => 1.0 - pow(1.0 - x, 4);

  static double inOutQuart(double x) =>
      x < 0.5 ? 8 * x * x * x * x : 1 - pow(-2 * x + 2, 4) / 2;

  static double inQuint(double x) => x * x * x * x * x;

  static double outQuint(double x) => 1.0 - pow(1 - x, 5);

  static double inOutQuint(double x) =>
      x < 0.5 ? 16 * x * x * x * x * x : 1 - pow(-2 * x + 2, 5) / 2;

  static double inExpo(double x) =>
      x == 0.0 ? 0.0 : pow(2, 10.0 * x - 10.0).toDouble();

  static double outExpo(double x) =>
      x == 1 ? 1.0 : 1 - pow(2, -10 * x).toDouble();

  static double inOutExpo(double x) => x == 0
      ? 0
      : x == 1
          ? 1
          : x < 0.5
              ? pow(2, 20 * x - 10) / 2
              : (2 - pow(2, -20 * x + 10)) / 2;

  static double inCirc(double x) => 1 - sqrt(1 - pow(x, 2));

  static double outCirc(double x) => sqrt(1 - pow(x - 1, 2));

  static double inOutCirc(double x) => x < 0.5
      ? (1 - sqrt(1 - pow(2 * x, 2))) / 2
      : (sqrt(1 - pow(-2 * x + 2, 2)) + 1) / 2;
}

typedef EaseFunction = double Function(double i);

enum EaseType {
  In_Sine,
  Out_Sine,
  In_Out_Sine,
  In_Quad,
  Out_Quad,
  In_Out_Quad,
  In_Cubic,
  Out_Cubic,
  In_Out_Cubic,
  In_Quart,
  Out_Quart,
  In_Out_Quart,
  In_Quint,
  Out_Quint,
  In_Out_Quint,
  In_Expo,
  Out_Expo,
  In_Out_Expo,
  In_Circ,
  Out_Circ,
  In_Out_Circ
}

List<double> interpolateEase({required int length, required EaseType easeType}) {
  final easeFunction = _getEaseFunction(easeType);
  return List.generate(
    length,
    (i) => easeFunction(i * (1 / length)),
    growable: false,
  );
}

EaseFunction _getEaseFunction(EaseType easeType) {
  switch (easeType) {
    case EaseType.In_Sine:
      return EaseFunctions.inSine;
    case EaseType.Out_Sine:
      return EaseFunctions.outSine;
    case EaseType.In_Out_Sine:
      return EaseFunctions.inOutSine;
    case EaseType.In_Quad:
      return EaseFunctions.inQuad;
    case EaseType.Out_Quad:
      return EaseFunctions.outQuad;
    case EaseType.In_Out_Quad:
      return EaseFunctions.inOutQuad;
    case EaseType.In_Cubic:
      return EaseFunctions.inCubic;
    case EaseType.Out_Cubic:
      return EaseFunctions.outCubic;
    case EaseType.In_Out_Cubic:
      return EaseFunctions.inOutCubic;
    case EaseType.In_Quart:
      return EaseFunctions.inQuart;
    case EaseType.Out_Quart:
      return EaseFunctions.outQuart;
    case EaseType.In_Out_Quart:
      return EaseFunctions.inOutQuart;
    case EaseType.In_Quint:
      return EaseFunctions.inQuint;
    case EaseType.Out_Quint:
      return EaseFunctions.outQuint;
    case EaseType.In_Out_Quint:
      return EaseFunctions.inOutQuint;
    case EaseType.In_Expo:
      return EaseFunctions.inExpo;
    case EaseType.Out_Expo:
      return EaseFunctions.outExpo;
    case EaseType.In_Out_Expo:
      return EaseFunctions.inOutExpo;
    case EaseType.In_Circ:
      return EaseFunctions.inCirc;
    case EaseType.Out_Circ:
      return EaseFunctions.outCirc;
    case EaseType.In_Out_Circ:
      return EaseFunctions.inOutCirc;
  }
}
