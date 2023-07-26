

import 'package:lemon_math/src.dart';
import 'package:test/test.dart';

void main() {

  test('interpolateDegrees', () {
    expect(interpolateDegrees(20, 40, 0.5), 30);
    expect(interpolateDegrees(350, 30, 0.5), 10);
    print(interpolateDegrees(350, 30, 0.1));
  });
}