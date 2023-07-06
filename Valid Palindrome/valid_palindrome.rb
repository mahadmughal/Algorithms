# @param {String} s
# @return {Boolean}

def is_digit?(s)
    code = s.ord

    code >= 48 && code <= 57
end

def is_letter?(s)
    code = s.ord

    code >= 97 && code <= 122
end

def remove_non_alphanumeric_chars(str)
    str.split('').map do |char| 
        if is_digit?(char) || is_letter?(char)
            char
        else
            ''
        end
    end.join
end

def is_palindrome(str, transformable=true)
    return true if str.nil?
    return true if str[1].nil?

    if transformable
        str = remove_non_alphanumeric_chars(str.downcase)
        is_palindrome(str, false)
    end

    if str[0] == str[-1]
        is_palindrome(str[1..-2], false)
    else
        return false
    end
end


input = 'mahad@#$'

beginning_time = Time.now
puts "result: #{is_palindrome(input)}"
end_time = Time.now
puts "Time elapsed: #{(end_time - beginning_time)*1000} milliseconds"
