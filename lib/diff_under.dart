
import 'diff.dart';

bool diffUnder(num a, num b, num under){
  return diff(a, b) < under;
}