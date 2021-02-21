def max_profit_backt(prices,i,j,profit)
        # p i

        return profit if i == j && j == prices.length-1
        # p profit
        if prices[j] - prices[i] > profit
            profit = prices[j] - prices[i]
        end
        l = prices.length-1
        for k in (i+1..l) do
            for m in (k+1..l) do
                # p profit
                 profit = max_profit_backt(prices,k.clone,m.clone,profit)
            end
        end 
        return profit
    end    
    def max_profit(prices)
        return prices[1] - prices[0] if prices.length == 2 && prices[1] > prices[0]
        d_p = []
        max_profit_backt(prices,-1,prices.length-1,0)
    end