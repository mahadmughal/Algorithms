# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)

    return true if flowerbed == [0] && n == 1

    i = 0
    start_zeros_ind = 0
    to_fill = flowerbed[0] == 1

    while(flowerbed[i] != nil && n > 0)

        if flowerbed[i] == 0
            if to_fill
                start_zeros_ind = i
                to_fill = false
            end

            if flowerbed[i+1].nil?
                if start_zeros_ind == 0
                    if (i+1)%2 == 0
                        n -= ((i+1)/2)
                    else
                        n -= (((i+1)/2)+1)
                    end
                elsif (i - start_zeros_ind)%2 == 0
                    n -= (((i - start_zeros_ind)/2))
                else
                    n -= (((i - start_zeros_ind)/2)+1)
                end
            end
        else
            if start_zeros_ind == 0 || ((i - start_zeros_ind)%2 != 0)
                n -= ((i - start_zeros_ind)/2)
            elsif (i - start_zeros_ind)%2 == 0
                n -= (((i - start_zeros_ind)/2)-1)
            end

            to_fill = true
        end

        i += 1
    end

    n < 1
end

flowerbed = [1, 0, 0, 0, 1, 0, 1]
n = 1

beginning_time = Time.now
puts  "result: #{can_place_flowers(flowerbed, n)}"
end_time = Time.now
puts "Time elapsed using reverse method: #{(end_time - beginning_time)*1000} milliseconds"
