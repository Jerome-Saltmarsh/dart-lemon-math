import 'ease_function.dart';
import 'ease_functions.dart';
import 'ease_type.dart';

EaseFunction getEaseTypeFunction(EaseType easeType) {
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
