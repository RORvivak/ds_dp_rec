


def cal (tokens, power)
	count = 0
	i = 0
	j = tokens.length - 1

	while(i<=j) do
		p power
		p tokens[i]
		if(power >= tokens[i])
			power = power - tokens[i]
			i = i + 1
			count = count + 1
		elsif(power > 0)
			# count = count - 1
			power = power + tokens[i]
			j = j - 1
		else
			return count
		end	
	end

	return count
end	


ar = gets.chomp.split(", ").map(&:to_i)
po = gets.chomp.to_i

p cal(ar, po)