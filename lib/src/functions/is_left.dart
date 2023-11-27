
bool isLeft(double aX, double aY, double bX, double bY, double cX, double cY) =>
    ((bX - aX) * (cY - aY) - (bY - aY) * (cX - aX)) > 0;
