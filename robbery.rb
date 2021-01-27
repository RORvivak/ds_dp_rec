house_set = []
dp = []
house_set = gets.chomp.split(",").map(&:to_i)

return house_set.max if(house_set.length == 1 || house_set.length == 2)
dp[0] = num[0]
dp[1] = [num[0], num[1]].max

i = 2
while(i<house_set.length)
	dp[i] = [[dp[i-2],num[i]].max, num[i-1]].max
end

return dp.last	