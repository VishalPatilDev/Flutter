class Strong {
  int getStrong(List list) {
    int _count = 0;
    for (int i = 0; i < list.length; i++) {
      int temp = list[i];
      int ret = 0;
      while (temp > 0) {
        int fact = 1;
        int x = temp % 10;
        while (x > 0) {
          fact = fact * x;
          x--;
        }
        ret = ret + fact;
        temp ~/= 10;
      }
      if (ret == list[i]) {
        _count++;
      }
    }
    return _count;
  }
}
