num diff(num a, num b){
  return (a - b).abs();
}

bool diffUnder(num a, num b, num under){
  return (a - b).abs() < under;
}

bool diffOver(num a, num b, num over){
  return (a - b).abs() > over;
}


