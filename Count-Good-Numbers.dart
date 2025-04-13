class Solution {
  static const int MOD = 1000000007;

  int countGoodNumbers(int n) {
    int evens = (n + 1) ~/ 2;
    int odds = n ~/ 2;

    return (modPow(5, evens, MOD) * modPow(4, odds, MOD)) % MOD;
  }

  int modPow(int base, int exp, int mod) {
    int result = 1;
    base %= mod;
    while (exp > 0) {
      if (exp % 2 == 1) result = (result * base) % mod;
      base = (base * base) % mod;
      exp ~/= 2;
    }
    return result;
  }
}