class Palindrome {
  //!Palindrome
  int getPalindrome(List<int> list) {
    int _count = 0;
    for (int i = 0; i < list.length; i++) {
      int temp = list[i];
      int rev = 0;
      while (temp > 0) {
        int rem = temp % 10;
        rev = rev * 10 + rem;
        temp = temp ~/ 10;
      }
      if (rev == list[i]) {
        _count++;
      }
    }
    return _count;
  }
}
