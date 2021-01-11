coins = [1,2,5]
dp = Array.new(12)
dp.fill(12)
dp[0] = 0
(0...11).each do |i|
	j = 0
	while(j < coins.length) do
		p coins[j] if j == 2 && i == 5
		p dp[i] if j == 2 && i == 5
		if coins[j] <= dp[i]
		   # p i
		   # p j
           dp[i] = [dp[i], (1 + dp[i - coins[j]])].min
           # p dp
		end
		j = j + 1	
	end
end		

# p dp