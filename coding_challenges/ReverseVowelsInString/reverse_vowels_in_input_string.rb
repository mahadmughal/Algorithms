# @param {String} s
# @return {String}

def is_vowel?(char)
    return false if char.nil?
    char = char.downcase

    char == "a" ||
    char == "e" ||
    char == "i" ||
    char == "o" ||
    char == "u"
end

def reverse_vowels(s)

    i = 0
    j = -1
    l = s.length

    while(i + j.abs <= l)

        if is_vowel?(s[i]) && is_vowel?(s[j])
            temp = s[i]
            s[i] = s[j]
            s[j] = temp

            i += 1
            j -= 1
        end

        if !is_vowel?(s[i])
            i += 1
        end
        
        if !is_vowel?(s[j])
            j -= 1
        end

    end

    s
end

input = 'my name is Mahad'

beginning_time = Time.now
puts "result: #{reverse_vowels(input)}"
end_time = Time.now
puts "Time elapsed: #{(end_time - beginning_time)*1000} milliseconds"
