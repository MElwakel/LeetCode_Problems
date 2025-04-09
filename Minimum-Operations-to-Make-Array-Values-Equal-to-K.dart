class Solution {
  int minOperations(List<int> nums, int k) {
    int minvalue=nums.reduce( ( a , b ) => a < b ? a : b);
    int maxvalue=nums.reduce( ( a , b ) => a > b ? a : b);
    int count=0;
    if(minvalue<k){return -1;}
    if(maxvalue==k){return 0;}
    nums.add(k);
    do{
      nums.removeWhere((element) => element== maxvalue);
      count++;
      maxvalue=nums.reduce( ( a , b ) => a > b ? a : b);
      if(maxvalue==k)return count;
    }while(nums.isNotEmpty);
    return count+1;
  }
}