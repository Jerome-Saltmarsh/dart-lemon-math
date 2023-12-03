

int interpolateColors(int colorA, int colorB, double i) {
  if (i < 0.0 || i > 1.0) {
    throw ArgumentError('Parameter "i" must be between 0 and 1 inclusive.');
  }

  int redA = (colorA >> 16) & 0xFF;
  int greenA = (colorA >> 8) & 0xFF;
  int blueA = colorA & 0xFF;

  int redB = (colorB >> 16) & 0xFF;
  int greenB = (colorB >> 8) & 0xFF;
  int blueB = colorB & 0xFF;

  int interpolatedRed = (redA + (i * (redB - redA))).round();
  int interpolatedGreen = (greenA + (i * (greenB - greenA))).round();
  int interpolatedBlue = (blueA + (i * (blueB - blueA))).round();

  return (interpolatedRed << 16) | (interpolatedGreen << 8) | interpolatedBlue;
}

// int interpolateColors(int colorA, int colorB, double i) {
//   if (i < 0.0 || i > 1.0) {
//     throw ArgumentError('Parameter "i" must be between 0 and 1 inclusive.');
//   }
//
//   int redA = (colorA >> 16) & 0xFF;
//   int greenA = (colorA >> 8) & 0xFF;
//   int blueA = colorA & 0xFF;
//
//   int redB = (colorB >> 16) & 0xFF;
//   int greenB = (colorB >> 8) & 0xFF;
//   int blueB = colorB & 0xFF;
//
//   int differenceRed = redB - redA;
//   int differenceGreen = greenB - greenA;
//   int differenceBlue = blueB - blueA;
//
//   // Check if the difference is greater than 126, and apply cyclic interpolation
//   if (differenceRed.abs() > 126) {
//     redA = (redA + 256) % 256; // Ensure redA is in the range [0, 255]
//     differenceRed = (redB + 256 - redA) % 256 - 256;
//   }
//
//   if (differenceGreen.abs() > 126) {
//     greenA = (greenA + 256) % 256; // Ensure greenA is in the range [0, 255]
//     differenceGreen = (greenB + 256 - greenA) % 256 - 256;
//   }
//
//   if (differenceBlue.abs() > 126) {
//     blueA = (blueA + 256) % 256; // Ensure blueA is in the range [0, 255]
//     differenceBlue = (blueB + 256 - blueA) % 256 - 256;
//   }
//
//   int interpolatedRed = (redA + (i * differenceRed)).round();
//   int interpolatedGreen = (greenA + (i * differenceGreen)).round();
//   int interpolatedBlue = (blueA + (i * differenceBlue)).round();
//
//   return (interpolatedRed << 16) | (interpolatedGreen << 8) | interpolatedBlue;
// }
