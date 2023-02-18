import 'random.dart';

int randomInt(int min, int max) {
  return random.nextInt(max - min) + min;
}
