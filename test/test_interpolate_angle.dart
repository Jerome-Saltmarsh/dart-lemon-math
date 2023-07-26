

import 'package:lemon_math/src.dart';
import 'package:test/test.dart';

void main() {

  test('interpolateDegrees', () {
    expect(interpolateDegrees(20, 40, 0.5), 30);
    expect(interpolateDegrees(350, 30, 0.5), 10);
    print(interpolateDegrees(350, 30, 0.1));
    print(interpolateDegrees(5, 350, 0.5));
    print(interpolateDegrees(20, 280, 0.5));
    print(interpolateDegrees(100, 200, 0.5));
  });
}