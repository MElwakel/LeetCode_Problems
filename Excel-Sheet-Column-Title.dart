class Solution {
  String convertToTitle(int columnNumber) {
    String ans=\\;
    while(columnNumber!=0){
        columnNumber--;
        ans=String.fromCharCode(65+columnNumber%26)+ans;
        columnNumber~/=26;
    }
    return ans;
}
}