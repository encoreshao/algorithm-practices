# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  maps = {}
  nums.each_with_index do |num, index|
    return [maps[num], idx] if maps.has_key?(num)

    maps[target - num] = idx
  end
  []
end

def two_sum_v2(nums, target)
  nums.each_with_index do |num, idx|
    si = nums.index(target - num)

    return [idx, si] if pi && pi != idx
  end
  []
end