import 'random.dart';

double randomBetween(num a, num b){
  return (random.nextDouble() * (b - a)) + a;
}
