
def find_difference(nums1, nums2)

    common_num = nums1 & nums2
    nums1 = nums1 - common_num
    nums2 = nums2 - common_num

    hash_1 = {}
    hash_2 = {}
    i = 0

    while(nums1[i] != nil || nums2[i] != nil)

        if nums1[i] && hash_1[nums1[i].to_s].nil?
            hash_1[nums1[i].to_s] = nums1[i]
        end

        if nums2[i] && hash_2[nums2[i].to_s].nil?
            hash_2[nums2[i].to_s] = nums2[i]
        end

        i += 1
    end

    nums1 = hash_1.empty? ? [] : hash_1.values
    nums2 = hash_2.empty? ? [] : hash_2.values

    [nums1, nums2]
end


nums1 = [1, 2, 3]
nums2 = [2, 4, 6, 3]

beginning_time = Time.now
puts "result: #{find_difference(nums1, nums2)}"
end_time = Time.now
puts "Time elapsed: #{(end_time - beginning_time)*1000} milliseconds"

