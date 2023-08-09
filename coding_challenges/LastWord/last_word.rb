# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    
    l = 0
    i = -1

    while(s[i] != nil)
        if s[i] == ' ' && l > 0
            break
        elsif s[i] == ' ' && l == 0
            i -= 1
        else
            l += 1
            i -= 1
        end
    end

    l
end

input = 'Hello World'

puts length_of_last_word(input)