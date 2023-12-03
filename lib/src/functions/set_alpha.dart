
int setAlpha(int color, int alpha) => (color & 0x00FFFFFF) | (alpha << 24);