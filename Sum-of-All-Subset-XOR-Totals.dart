class Solution {
  int subsetXORSum(List<int> nums) {
    int sum=0;
    List<int> ans=[];
    for(int i=nums.length-1;i>=0;i--){
        sum+=nums[i];
        ans.add(nums[i]);
        for(int j=ans.length-2;j>=0;j--){
            sum+=nums[i]^ans[j];
            ans.add(nums[i]^ans[j]);
        }
    }
    return sum;
}
}