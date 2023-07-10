def longest_common_prefix(strs, i=0, prefix='')
    j=1

    strs = strs.uniq if i == 0
    return strs[0] if strs[j].nil?

    while(strs[j] != nil)
        if strs[j].empty?
            return prefix
        else
            if strs[j][0..i] != strs[j-1][0..i] || strs[j][0..i].nil?
                return prefix
            else
                j += 1
            end
        end
    end

    longest_common_prefix(strs, i+1, strs[0][0..i])
end


input = ["dog","racecar","car"]

beginning_time = Time.now
puts  "result: #{longest_common_prefix(input)}"
end_time = Time.now
puts "Time elapsed using reverse method: #{(end_time - beginning_time)*1000} milliseconds"