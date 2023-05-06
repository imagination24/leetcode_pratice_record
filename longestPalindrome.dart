/*
最长回文字符串
 */
///babad -> bab
String longestPalindrome(String s) {
  if(s.isEmpty)return "";
  int start = 0,end = 0;
  for(int i = 0; i<s.length;i++){
    int lenOfOdd = expandAroundCenter(s, i, i);
    int lenOfEven = expandAroundCenter(s, i, i + 1);
    int len = max(lenOfOdd, lenOfEven);
    if(len>end - start){
      start = (i-(len - 1)~/2);
      end = (i + len~/2);
    }
  }
  return s.substring(start,end+1);
}

int expandAroundCenter(String s,int left,int right){
  int L = left,R = right;
  while(L>=0&&R<s.length&&s[L]==s[R]){
    L--;
    R++;
  }
  return R-L-1;
}