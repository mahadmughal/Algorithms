
def max_profit(prices, buy=0, sell=1, profit=0)
    
    return profit if prices[sell].nil?

    if prices[buy] < prices[sell]
        current_profit = prices[sell] - prices[buy]

        if profit < current_profit
            max_profit(prices, buy, sell+1, current_profit)
        else
            max_profit(prices, buy, sell+1, profit)
        end
    else
        max_profit(prices, sell, sell+1, profit)
    end
end

input = [7,1,5,3,6,4]

beginning_time = Time.now
puts  "result: #{max_profit(input)}"
end_time = Time.now
puts "Time elapsed using reverse method: #{(end_time - beginning_time)*1000} milliseconds"