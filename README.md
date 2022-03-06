#  算法

### 习题集

- [两数之和](https://github.com/encoreshao/algorithm-practices/blob/main/lib/two_sum.rb)
  - 哈希表 #two_sum
    - 将寻找 target - x 的时间复杂度降低到从 O(N) 降低到 O(1)。
  - 暴力枚举 #two_sum_v2，枚举数组中每一个数 x，寻找数组中是否存在 target - x
    - 时间复杂度：O(N^2)，其中 N 是数组中的元素数量。最坏情况下数组中任意两个数都要被匹配一次。
    - 空间复杂度：O(1)。
- [三数之和](https://github.com/encoreshao/algorithm-practices/blob/main/lib/three_sum.rb)
  - **排序 + 双指针**
  - 首先对数组进行排序，排序后固定一个数 nums[i]，再使用左右指针指向 nums[i]后面的两端，数字分别为 nums[l] 和 nums[r]，计算三个数的和 sum 判断是否满足为 0，满足则添加进结果集
  - 如果 nums[i]大于 0，则三数之和必然无法等于 0，结束循环
  - 如果 nums[i] == nums[i-1]，则说明该数字重复，会导致结果重复，所以应该跳过
  - 当 sum == 0 时，nums[l] == nums[l+1] 则会导致结果重复，应该跳过，l++
  - 当 sum == 0 时，nums[r] == nums[r-1] 则会导致结果重复，应该跳过，r--
  - 时间复杂度：O(n^2)，n 为数组长度