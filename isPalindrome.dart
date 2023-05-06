/*
是否是回文
 */
bool isPalindrome(int x) {
  if(x.isNegative)return false;
  String revers = x.toString().split("").reversed.join();
  return x.toString()==revers;
}