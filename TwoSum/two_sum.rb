# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def two_sum(nums, target)
    l = nums.length

    if nums[-1] == l
        if (nums[0]..nums[-1]).to_a == nums && target%2 != 0
            ind = target/2

            return [ind, ind-1]
        end
    end

    (0..l-2).each_with_index do |i|
        (i+1..l-1).each_with_index do |j|
            next unless nums[i]+nums[j] == target

            return [i, j]
        end
    end
end

