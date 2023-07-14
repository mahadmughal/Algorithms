# @param {String} s
# @return {Integer}

def length_of_longest_substring(str, str_length=0, start=0, i=0, hash={}, l=0)

    return l if str[i].nil?
    return l if str_length-start < l

    prev_ind = hash[str[i]]
    
    if str_length == 0
        length_of_longest_substring(str, str.length)    
    elsif prev_ind
        if str[i-1] == str[i]
            start = i
            hash.clear
            hash[str[i]] = i
        else
            hash[str[i]] = i
            if start < prev_ind+1
                start = prev_ind+1
            else
                l = i-start+1 if l < i-start+1
            end
        end

        length_of_longest_substring(str, str_length, start, i+1, hash, l)
    else
        l = i-start+1 if l < i-start+1
        hash[str[i]] = i
        length_of_longest_substring(str, str_length, start, i+1, hash, l)
    end

end

input = 'pwwkew'

beginning_time = Time.now
puts  "result: #{length_of_longest_substring(input)}"
end_time = Time.now
puts "Time elapsed using reverse method: #{(end_time - beginning_time)*1000} milliseconds"