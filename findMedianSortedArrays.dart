/*
寻找中位数
 */

///[1,2] [3,4]
num findMedianSortedArrays(List<int> nums1, List<int> nums2) {
  nums1.addAll(nums2);
  nums1.sort();
  if(nums1.length%2!=0)return nums1[((nums1.length)/2).round()];
  return (nums1[(nums1.length~/2)-1]+nums1[(nums1.length~/2)+1])/2;
}