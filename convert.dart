/*
N字形变化
 */
String convert(String s,int numRows){
  if(numRows<2)return s;
  List<String> rows = List.generate(numRows, (index) => "");
  int i = 0,flag = -1;
  for(int c = 0;c < s.length;c++) {
    rows[i] = s[c];
    if(i == 0 || i == numRows -1 ) flag = -flag;
    i += flag;
  }
  String result = "";
  rows.forEach((element) => result += element);
  return result;
}