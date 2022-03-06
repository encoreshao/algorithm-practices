# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  return [] if nums.nil? || nums.length < 3

  n = nums.length
  nums.sort!

  results = []
  (0..(n-1)).each do |i|
    break if nums[i] > 0

    next if i > 0 && nums[i] == nums[i - 1]
    l = i + 1
    r = n - 1

    while (l < r)
      sum = nums[i] + nums[l] + nums[r]
      if (sum == 0)
        results << [nums[i], nums[l], nums[r]]
        l += 1 while (l < r && nums[l] == nums[l+1])
        r -= 1 while (l < r && nums[r] == nums[r-1])

        l += 1
        r -= 1
      elsif (sum < 0)
        l += 1
      elsif (sum > 0)
        r -= 1
      end
    end
  end

  results
end

def three_sum_v2(nums)
  n = nums.length
  return [] if n < 3 # if nums length less than 3, should be returns

  nums.sort!
  results = []

  (0..(n-1)).each do |i|
    break if nums[i] > 0 # if first item already greater than 0, all the items will be > 0

    next if i > 0 && nums[i] == nums[i - 1]
    third = n - 1
    target = -nums[i]

    ((i+1)..(n-1)).each do |j|
      next if j > i + 1 && nums[j] == nums[j - 1]
      third -= 1 while (j < third && nums[j] + nums[third] > target)
      break if j == third
      results << [nums[i], nums[j], nums[third]] if nums[j] + nums[third] == target
    end
  end

  results
end