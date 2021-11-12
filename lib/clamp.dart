T clamp<T extends num>(T value, T min, T max){
  if (value < min) return min;
  if (value > max) return max;
  return value;
}