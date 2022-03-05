# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  search = Hash.new
  nums.each_with_index do |num, index|
    idx = search[target - num]

    return [idx, index] if idx != nil
    search[num] = index
  end
end

def two_sum_v2(nums, target)
  nums.each_with_index do |num, idx|
    nums.each_with_index do |num2, idx2|
      next if idx2 <= idx
      return [idx, idx2] if num + num2 == target
    end
  end
end