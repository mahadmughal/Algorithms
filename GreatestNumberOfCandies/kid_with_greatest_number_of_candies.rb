
def kids_with_candies(candies, extra_candies)
    greatest_num_of_candies = candies.max

    i = 0

    while(candies[i] != nil)

        if candies[i] + extra_candies >= greatest_num_of_candies
            candies[i] = true
        else
            candies[i] = false
        end

        i += 1
    end

    candies
end


candies = [2,3,5,1,3]
extra_candies = 3

beginning_time = Time.now
puts  "result: #{kids_with_candies(candies, extra_candies)}"
end_time = Time.now
puts "Time elapsed using reverse method: #{(end_time - beginning_time)*1000} milliseconds"

