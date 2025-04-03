class Solution {
  String repeatedCharacter(String s) {
    Map<String,int> dic={};
    for(int i=0;i<s.length;i++){
      if(dic.containsKey(s[i])){
        return s[i];
      }
      else{
        dic[s[i]]=1;
      }
    }
    return "";
  }
}