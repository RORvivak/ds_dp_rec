# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    size = prices.length - 1
    min_value = Float::INFINITY 
    max_profit = 0
    
    prices.each do |e|
        if min_value > e
            min_value = e
        elsif max_profit < (e - min_value)
            max_profit = (e - min_value)
            
        end    
    end    
    return max_profit
end