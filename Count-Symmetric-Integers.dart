class Solution {
  int countSymmetricIntegers(int low, int high) {
  int sum = 0;
  for (int num = low; num <= high; num++) {
    int len = num.toString().length;
    if (len % 2 != 0) continue;

    int half = len ~/ 2;
    String s = num.toString();
    int leftSum = 0, rightSum = 0;

    for (int i = 0; i < half; i++) {
      leftSum += int.parse(s[i]);
      rightSum += int.parse(s[i + half]);
    }

    if (leftSum == rightSum) {sum++;num+=8;}
  }

  return sum;
}
}