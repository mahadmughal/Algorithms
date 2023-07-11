
def is_valid(s)

    stack = []
    hash = { ')'=>'(', ']'=>'[', '}'=>'{' }

    s.each_char do |char|
        if char == '(' || char == '[' || char == '{'
            stack.push(char)
        elsif hash[char] == stack[-1]
            stack.pop
        else
            return false
        end
    end

    stack.empty?
end


input = '{}(())'

beginning_time = Time.now
puts  "result: #{is_valid(input)}"
end_time = Time.now
puts "Time elapsed using reverse method: #{(end_time - beginning_time)*1000} milliseconds"