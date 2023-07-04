

def longest_substring(str, i=0, hash={}, lngst_substr='')
    return lngst_substr if str[i].nil?

    prev_ind = hash[str[i]]
    if prev_ind
        hash = {}
        longest_substring(str[prev_ind+1..], 0, hash, lngst_substr)
    else
        lngst_substr = str[0..i] if lngst_substr.length < i+1
        hash[str[i]] = i
        longest_substring(str, i+1, hash, lngst_substr)
    end
end

input = 'dvdf'

beginning_time = Time.now
puts  "result: #{longest_substring(input)}"
end_time = Time.now
puts "Time elapsed using reverse method: #{(end_time - beginning_time)*1000} milliseconds"