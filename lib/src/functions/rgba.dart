
int rgba({
  int r = 0,
  int g = 0,
  int b = 0,
  int a = 0,
}) => (a << 24) | (r << 16) | (g << 8) | b;
