
import 'random.dart';

T randomItem<T>(List<T> list) {
  return list[random.nextInt(list.length)];
}