class Armstrong {
  int getArmstrong(List list) {
    int _count = 0;
    for (int i = 0; i < list.length; i++) {
      int temp = list[i];
      int digit = 0;

      while (temp > 0) {
        digit++;
        temp ~/= 10;
      }

      temp = list[i];
      int res = 0;

      while (temp > 0) {
        int z = digit;
        int x = temp % 10;
        int sum = 1;

        while (z > 0) {
          sum = sum * x;
          z--;
        }

        res = res + sum;
        temp = temp ~/ 10;
      }

      if (res == list[i]) {
        _count++;
      }
    }
    return _count;
  }
}
