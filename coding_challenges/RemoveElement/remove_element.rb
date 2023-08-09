# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    
    i = 0

    while(nums[i] != nil)
        if nums[i] == val
            nums.delete_at(i)
        else
            i += 1
        end
    end

    nums.length
end