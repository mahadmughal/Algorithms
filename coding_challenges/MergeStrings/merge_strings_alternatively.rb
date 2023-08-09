
def merge_alternatively(word1, word2)

    merged = ''
    i = 0
    j = 0
    ind = 0

    while(true)

        if ind%2 == 0
            if word1[i].nil?
                merged.concat(word2[j..])
                break
            else
                merged.concat(word1[i])
                i += 1
            end
        else
            if word2[j].nil?
                merged.concat(word1[i..])
                break
            else
                merged.concat(word2[j])
                j += 1
            end
        end

        ind += 1
    end

    merged
end


word1 = 'abc'
word2 = 'pqr'

beginning_time = Time.now
puts "result: #{merge_alternatively(word1, word2)}"
end_time = Time.now
puts "Time elapsed: #{(end_time - beginning_time)*1000} milliseconds"
