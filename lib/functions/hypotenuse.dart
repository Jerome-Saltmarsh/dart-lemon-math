
import 'dart:math';

/// Pythagoras Theorem
double getHypotenuse(num adjacent, num opposite){
  return sqrt((adjacent * adjacent) + (opposite * opposite));
}