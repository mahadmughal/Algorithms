def is_palindrome_using_reverse?(str)
    l = str.length

    if l.even?
        str[0..l/2-1] == str[l/2..l-1].reverse
    else
        str[0..l/2-1] == str[l/2+1..l-1].reverse
    end
end

def is_palindrome_using_frequency?(str)
    frequencies = {}
    odd_count = 0

    str.each_char do |element|
        if frequencies[element]
            frequencies[element] += 1
        else
            frequencies[element] = 1
        end

        if frequencies[element].even?
            odd_count -= 1
        else
            odd_count += 1
        end
    end

    odd_count <= 1 
end

def is_palindrome_using_pointers?(str)
    return true if str.nil?
    return true if str[2].nil?
    return true if str[0].empty? || str[-1].empty?

    if str[0] == str[-1]
        is_palindrome?(str[1..-2])
    else
        return false
    end
end

input = 'mahad'

beginning_time = Time.now
puts is_palindrome_using_reverse?(input)
end_time = Time.now
puts "Time elapsed using reverse method: #{(end_time - beginning_time)*1000} milliseconds"

beginning_time = Time.now
puts is_palindrome_using_frequency?(input)
end_time = Time.now
puts "Time elapsed using frequency method: #{(end_time - beginning_time)*1000} milliseconds"

beginning_time = Time.now
puts is_palindrome_using_pointers?(input)
end_time = Time.now
puts "Time elapsed using pointers: #{(end_time - beginning_time)*1000} milliseconds"