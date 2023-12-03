
int interpolateByte(int a, int b, double i){
  return (a + (i * (b - a))).round();
}

