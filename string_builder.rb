source = gets.chomp
target = gets.chomp
substring = ""
num = 0
remaining = target

while(remaining.length > 0) do

	i = 0
	j = 0
	while(i < source.length && j < remaining.length) do
		if(source[i] == target[j])
			substring = substring + source[i]
			j = j + 1
		end
		i = i + 1	
	end	

	if(substring.length == 0)
		num =  -1
		break
	end
	num = num + 1
	remaining = remaining[(substring.length)...remaining.length]
	substring = ""	
end	

puts num
