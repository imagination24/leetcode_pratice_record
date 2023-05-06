/*
最长的不重复字符串
 */
///pwwkew
///au
///abcabcbb
int lengthOfLongestSubstring(String s) {
  if(s.isEmpty)return 0;
  ///set特性：存储一组唯一且无序的对象
  Set<String> set = {};
  ///whichIsBig:记录最大值
  ///left:左边的index值
  ///right:右边的index值
  int whichIsBig = 0,left = 0,right = 0;
  while(left<s.length&&right<s.length){
    ///存在相同值，删掉左边的，并右移
    ///不存在时，比较当前窗口长度是否大于记录的最大长度
    if(set.contains(s[right])){
      set.remove(s[left++]);
    }else{
      set.add(s[right++]);
      whichIsBig = whichIsBig>right-left?whichIsBig:right-left;
    }
  }
  return whichIsBig;
}