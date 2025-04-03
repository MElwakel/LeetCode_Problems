import 'dart:math';

class Solution {
  int mostPoints(List<List<int>> questions) {
    int n = questions.length;
    List<int> value = List.filled(n, 0);
    List<int> m = List.filled(n, questions[n - 1][0]);

    value[n - 1] = questions[n - 1][0];

    for (int i = n - 2; i >= 0; i--) {
      int points = questions[i][0];
      int brainpower = questions[i][1];

      if (i + brainpower >= n - 1) {
        value[i] = points;
      } else {
        value[i] = points + m[i + brainpower + 1];
      }
      m[i] = max(value[i], m[i + 1]);
    }
    return m[0];
  }
}
