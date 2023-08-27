# @param {Integer[]} arr
# @return {Boolean}
def unique_occurrences(arr)
    
    hash = {}
    i = 0

    while(arr[i] != nil)

        if hash[arr[i].to_s]
            hash[arr[i].to_s] += 1
        else
            hash[arr[i].to_s] = 1
        end

        i += 1
    end

    arr = hash.values
    hash = {}
    i = 0
    j = arr.length - 1

    while(i < j)

        if hash[arr[i].to_s]
            return false
        else
            hash[arr[i].to_s] = i 
        end

        if hash[arr[j].to_s]
            return false
        else
            hash[arr[j].to_s] = j 
        end

        i += 1
        j -= 1
    end

    i == j ? hash[arr[i].to_s].nil? : true
end

input = [-3,0,1,-3,1,1,1,-3,10,0]

beginning_time = Time.now
puts "result: #{unique_occurrences(input)}"
end_time = Time.now
puts "Time elapsed: #{(end_time - beginning_time)*1000} milliseconds"
