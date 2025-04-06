import 'dart:math';

class Solution {
 
List<int> largestDivisibleSubset(List<int> nums) {
  if(nums.length==1)return nums;
  int x=0;
  nums.sort();
  List<int> dp = List.filled(nums.length, 1);
  List<int> drev = List.filled(nums.length, -1);
  for (int i = 1; i<nums.length; i++) {
    for (int j = 0 ; j <i; j++) {
      if (dp[j]+1>dp[i] && nums[i]%nums[j]==0) {
        dp[i] = dp[j]+1;
        drev[i]=j;
      }
    }
    if(dp[x]<dp[i])x=i;
  }
  List<int> ans = [];
  while(x!=-1){
    ans.add(nums[x]);
    x=drev[x];  
  }
  return ans;
}
}