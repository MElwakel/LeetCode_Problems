class Solution {
  int getLucky(String s, int k) {
  int sum = 0;
  for (int i = 0; i < s.length; i++) {
    if ((s.codeUnitAt(i) - 96) >= 20) {
      sum += ((s.codeUnitAt(i) - 96) % 10) + 2;
    }
    else if((s.codeUnitAt(i) - 96) >= 10){
      sum += ((s.codeUnitAt(i) - 96) % 10) + 1;
    }
    else{
      sum += ((s.codeUnitAt(i) - 96) % 10);
    }
  }
  while(--k!=0){
    int newsum=0;
    while(sum!=0){
      newsum+=sum%10;
      sum=sum~/10;
    }
    sum=newsum;
  }
  return sum;
}
}