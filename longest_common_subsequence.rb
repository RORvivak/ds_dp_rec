str1 = gets.chomp
str2 = gets.chomp

str1_length = str1.length 
str2_length = str2.length 

i = 0
j = 0
m = []

dp = []
max_length = [str1_length, str2_length].max
dp[0] = []
max_length.times{ dp[0].push(0) }

while(i<str1_length) do
	j = 0
	dp[i+1] = [0] 
	while(j<str2_length) do

		if str1[i] == str2[j]
     
			dp[i+1] = dp[i+1].push(dp[i][j] + 1)
			dp.clear
			(dp[i][j] > dp[i+1][j+1]) ? m.push([i,j]) : m.push([i+1, j+1])
		else
			p dp
			dp[i+1].push(0)
		end	
		j = j + 1
	end
	i = i + 1
end	

p m[0]