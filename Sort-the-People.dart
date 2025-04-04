class Solution {
  List<String> sortPeople(List<String> names, List<int> heights) {
    int n=names.length;
    List<String> sorted=List.filled(n,"");
    
    for(int i=0;i<n;i++){
        int m=0,index=0;
        for(int j=0;j<names.length;j++){
            if(m<heights[j]){
              m=heights[j];
              index=j;
            }
        }
        sorted[i]=names.removeAt(index);
        heights.removeAt(index);
    }
  return sorted;
  }
}