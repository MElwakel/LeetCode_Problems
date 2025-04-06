import 'dart:math';
class Solution {
  
int titleToNumber(String columnTitle) {
    num ans=0;
    for(int i=columnTitle.length-1,j=0;i>=0;i--,j++){
        ans+=(columnTitle.codeUnits[j]-64)*pow(26, i);
    }
    return ans.toInt();
}
}