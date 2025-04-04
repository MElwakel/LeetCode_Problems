class Solution {
  bool isPalindrome(String s) {
    s=s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
    for(int i=0;i<s.length;i++){
      if(s[i]!=s[s.length-i-1])return false;
    }
    return true;
}
}