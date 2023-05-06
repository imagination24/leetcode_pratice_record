/*
三数相加最接近target
 */
///[-1,2,1,-4] 1
///[-4,-1,1,2] 1
int threeSumClosest(List<int> nums, int target) {
  if(nums.length<3)return 0;
  ///init 结果和差距
  int result = nums[0]+nums[1]+nums[2];
  int difference = (target-result).abs();
  nums.sort();
  for(int i = 0;i<nums.length;i++){
    int left = i+1,right = nums.length-1;
    while(left<right){
      int sum = nums[i]+nums[left]+nums[right];
      int currentDifference = (target - sum).abs();
      if(currentDifference<difference) {
        result = sum;
        difference = currentDifference;
      }
      if(sum > target) {
        right--;
      } else if(sum < target) {
        left++;
      } else {
        return result;
      }
    }
  }
  return result;
}