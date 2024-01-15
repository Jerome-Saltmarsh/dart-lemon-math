
import 'random.dart';

T randomItem<T>(Iterable<T> list) => list.elementAt(random.nextInt(list.length));
