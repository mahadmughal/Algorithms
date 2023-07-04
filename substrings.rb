
def substrings_using_recursion(str, i=0, j=0, l=0, substrings=[])

    if substrings.empty?
        substrings_using_recursion(str, 0, 1, str.length, [str[0]])
    elsif i <= l-1
        if j <= l-1
            substrings.push(str[i..j])
            substrings_using_recursion(str, i, j+1, l, substrings)
        else
            substrings_using_recursion(str, i+1, i+1, l, substrings)
        end
    else
        return substrings
    end
end


def substrings_using_loop(str)
    l = str.length
    substrings = []

    (0..l-1).collect do |i|
        (i..l-1).collect do |j|
            substrings.push(str[i..j])
        end
    end

    substrings
end



input = 'abcdfnaowefewiofewafwojfewpfewoifjfwjeaiofnwdioweanfewanfoewnfofnewainfweaufhweafnfjoiweafewaiofjofoweinfwefoiwenoi'

beginning_time = Time.now
substrings_using_loop(input)
end_time = Time.now
puts "Time elapsed using loop method: #{(end_time - beginning_time)*1000} milliseconds"

beginning_time = Time.now
substrings_using_recursion(input)
end_time = Time.now
puts "Time elapsed using recursive method: #{(end_time - beginning_time)*1000} milliseconds"