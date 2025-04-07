import 'dart:math';
class Solution {
bool canPartition(List<int> nums) {
    int sum=0;
    for(int num in nums){
      sum+=num;
    }
    if(sum%2!=0){return false;}
    int halfsum=sum~/2;
    List<bool> dp=List.filled(halfsum+1, false);
    dp[0]=true;
    for(int num in nums){
      for(int currentsum = halfsum;currentsum>=num;currentsum--){
        dp[currentsum]= dp[currentsum] || dp[currentsum -num];
        if(dp[halfsum]==true)return true;
      }
    }
    return dp[halfsum];
  }
}