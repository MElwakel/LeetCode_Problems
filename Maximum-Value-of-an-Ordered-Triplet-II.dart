import 'dart:math';

class Solution {

int maximumTripletValue(List<int> nums) {
  int n = nums.length;
  List<int> suffixMax = List.filled(n, 0);
  suffixMax[n - 1] = nums[n - 1];
  for (int i = n - 2; i >= 2; i--) {
    suffixMax[i] = max(nums[i], suffixMax[i + 1]);
  }
  int first = nums[0], second = nums[1], ans = (first - second) * suffixMax[2];
  for(int i=1;i<n-1;i++){
    second=nums[i];
    first=max(first,nums[i-1]);
    ans = max(ans, (first - second) * suffixMax[i + 1]);
  }
  return ans < 0 ? 0 : ans;
}
}