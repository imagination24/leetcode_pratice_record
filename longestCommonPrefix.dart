/*
最长的共同前缀
 */
// ["dog","racecar","run","car"]
String longestCommonPrefix(List<String> strs) {
  String shortestString = strs[0];
  for(String s in strs){
    if(s.length<shortestString.length)shortestString = s;
  }
  String result = "";
  for(int i = 0;i<shortestString.length;i++){
    bool start = strs.every((element) => element.startsWith(shortestString[i]));
    if(!start)break;
    result += shortestString[i];
    i++;
  }
  return result;
}