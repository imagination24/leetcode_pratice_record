/*
十进制反转
 */
int reverse(int x) {
  int negative = x<0?-1:1;
  int revers = int.parse(x.abs().toString().split("").reversed.join());
  String twoRadix = revers.toRadixString(2);
  if(twoRadix.length>=32)return 0;
  if(twoRadix.length>=31&&negative==1){
    if(revers%2==0&&twoRadix[twoRadix.length-1]=="1")return 0;
    if(revers%2!=0&&twoRadix[twoRadix.length-1]=="0")return 0;
  }
  return revers*negative;
}