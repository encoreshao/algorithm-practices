# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  return [] if nums.nil?

  search = {}
  nums.each_with_index do |num, idx|
    pidx = search[target - num]
    return [pidx, idx] unless pidx.nil?

    search[num] = idx
  end
  []
end

def two_sum_v2(nums, target)
  return [] if nums.nil?

  nums.each_with_index do |num, idx|
    tidx = nums.index(target - num)

    return [idx, tidx] if tidx && tidx != idx
  end
  []
end