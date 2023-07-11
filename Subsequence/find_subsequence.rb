
def is_subsequence(s, t)

    t.each_char.with_index do |char, i|
        return true if s.empty?
        next unless s[0] == char

        s = s[1..]
    end

    s.empty?
end

s = 'mahad'
t = 'mahadasif'

beginning_time = Time.now
puts "result: #{is_subsequence(s, t)}"
end_time = Time.now
puts "Time elapsed: #{(end_time - beginning_time)*1000} milliseconds"
