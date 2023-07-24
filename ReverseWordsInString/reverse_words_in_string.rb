# @param {String} s
# @return {String}
def reverse_words(s)
    
    i = 0
    arr = []
    current_str = ''

    while(s[i] != nil)
        
        if s[i] == ' '
            arr.unshift(current_str) unless current_str.empty?
            current_str = ''
        else
            current_str.concat(s[i])
        end

        i += 1
    end

    arr.unshift(current_str) unless current_str.empty?
    
    return arr.join(' ')
end

input = 'my name is Mahad'

beginning_time = Time.now
puts "result: #{reverse_words(input)}"
end_time = Time.now
puts "Time elapsed: #{(end_time - beginning_time)*1000} milliseconds"


