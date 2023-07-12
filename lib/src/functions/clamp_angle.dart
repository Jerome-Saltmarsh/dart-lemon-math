import '../constants/pi2.dart';

double clampAngle(double angle) {
  if (angle < 0) return (pi2 - (-angle % pi2)) % pi2;
  return angle % pi2;
}
