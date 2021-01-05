def string_check(string, sub_string)
	i = 0
	j = 0
	k = 0
	count = 0
	hash_string = {}
	hash_string.default = 0

	while(k<sub_string.length) do
		hash_string[sub_string[k]] = hash_string[sub_string[k]] + 1
		k = k + 1
    end		

	while(string.length > 0) do
		 return -1 if hash_string[string[i]] == 0

		 	p string[i]
		 if(string[i] == sub_string[j])
		 	# p sub_string[j]
		 	i+=1
         end
         j+=1
         # return if i == 2
         if(j == (sub_string.length - 1))
		 # p sub_string[0..j]
		 # p string[i+1...string.length]
         	# p count
         	j = 0
         	count+=1
         	string = string[i+1...string.length]
         	i = 0
         end
         # return
	end
	return count
end

string = gets.chomp
sub_string = gets.chomp
p string_check(string, sub_string)

