int tailCall(int i, int j = 0) {
  if (i == 0) {
    return j;
  }
  return tailCall(i - 1, i + j);
}

int nonTailCall(int i) {
  if (i == 0) {
    return 0;
  }

  return nonTailCall(i - 1) + i;
}
