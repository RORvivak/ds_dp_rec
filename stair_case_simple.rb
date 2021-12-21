puts "Enter the no"
no = gets.chomp.to_i

def no_of_ways(n)
	num = []
	num[0] = 1
	num[1] = 1
	i = 2
	while(i<=n)
		num[i] = num[i - 1] + num[i - 2]
		i = i + 1
	end

	return num[n]	
end	


puts no_of_ways(no)