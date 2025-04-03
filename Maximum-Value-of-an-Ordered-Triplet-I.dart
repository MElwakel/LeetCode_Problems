import 'dart:math';
class Solution {
int maximumTripletValue(List<int> nums) {
  int n=nums.length
  ,first=nums[0]
  ,second=nums[1]
  ,third=nums[2]
  ,ans=0;
  ans=(first-second)*third;
  for(int i=0;i<n-2;i++){
    if(first<=nums[i]){
      first=nums[i];
      second=nums[i+1];
      for(int j=i+1;j<n-1;j++){
        if(second>=nums[j]){
          second=nums[j];
          third=nums[j+1];
          for(int k=j+1;k<n;k++){
           if(third<=nums[k]){
            third=nums[k];
            ans=max(ans,(first-second)*third);
           }
          }
        }
      }
    }
  }
  if(ans<0)return 0;
  else return ans;
}
}