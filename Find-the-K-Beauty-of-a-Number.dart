class Solution {
  int divisorSubstrings(int num, int k) {
    String s=num.toString();
    int count=0;
    for(int i=0;i<s.length-k+1;i++){
        String sub=s.substring(i,k+i);
        if(int.parse(sub)!=0 && num % int.parse(sub)==0)count++;
    }
    return count;
}
}