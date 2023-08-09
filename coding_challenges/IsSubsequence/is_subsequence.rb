
# using 2-pointers method ...
def is_subsequence(s, t)

    i = 0
    j = t.length

    while(i < j && !s.empty?)

        if s[0] == t[i]
            s = s[1..]
        end

        if s[-1] == t[j]
            s = s.chop
        end

        i += 1
        j -= 1

    end

    s.empty? || s == t[1]
end

original_string = 'ahbgdc'
substring = 'abc'

beginning_time = Time.now
puts  "result: #{is_subsequence(substring, original_string)}"
end_time = Time.now
puts "Time elapsed using reverse method: #{(end_time - beginning_time)*1000} milliseconds"