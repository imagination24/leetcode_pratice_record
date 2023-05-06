/*
最大面积
 */
/// [1,8,6,2,5,4,8,3,7]
int maxArea(List<int> height) {
  ///  i = 0, j = 8,height[i] =1  ， height[j] =7  ,res = 8
  ///  i = 1, j = 8,height[i] =8  ， height[j] =7  ,res = 49
  ///  i = 1, j = 7,height[i] =8  ， height[j] =3  ,res=  18
  ///  i = 1, j = 6,height[i] =8  ， height[j] =8  ,res=  40
  ///  i = 1, j = 5,height[i] =8  ， height[j] =4  ,res=  16
  ///  i = 1, j = 4,height[i] =8  ， height[j] =5  ,res=  15
  ///  i = 1, j = 3,height[i] =8  ， height[j] =2  ,res=  4
  ///  i = 1, j = 2,height[i] =8  ， height[j] =6  ,res=  6
  int i = 0,j = height.length-1,res = 0;
  while (i < j) {
    ///左边小往右移动
    ///右边小往左移动
    res = height[i] < height[j]
        ? max(res, (j - i) * height[i++])
        : max(res, (j - i) * height[j--]);

  }
  return res;
}