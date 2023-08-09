def numeric_notation(char)
    { 
        'I'=>1,
        'V'=>5,
        'X'=>10,
        'L'=>50,
        'C'=>100,
        'D'=>500,
        'M'=>1000
    }[char]
end

def substraction_case(chars)
    {
        'IV'=>4,
        'IX'=>9,
        'XL'=>40,
        'XC'=>90,
        'CD'=>400,
        'CM'=>900
    }[chars]
end

def roman_to_int(s, i=0, integer=0)
    if s[i].nil?
        return integer
    elsif s[i+1].nil?
        integer += numeric_notation(s[i])
        return integer
    else
        if substraction_case(s[i..i+1])
            integer += substraction_case(s[i..i+1])
            i += 2
        else
            integer += numeric_notation(s[i])
            i += 1
        end

        roman_to_int(s, i, integer)
    end
end

input = 'MCMXCIV'

beginning_time = Time.now
puts "result: #{roman_to_int(input)}"
end_time = Time.now
puts "Time elapsed: #{(end_time - beginning_time)*1000} milliseconds"
