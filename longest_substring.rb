string = gets.chomp
string_hash = {}

string_hash.default = 0
i = 0
j = 0
string_length = 0
sub_string = ""

while(i<string.length && j<string.length) do
	if string_hash[string[j]] == 1
		string_hash = {}
		string_hash.default = 0
		end_index = j - 1

		if sub_string.empty? || string_length < (end_index - i) + 1
			sub_string =  string[(i+1)..end_index]
			string_length = (end_index - (i+1)) + 1
		end
		j = j -1
		i = j
    else
		string_hash[string[j]] = string_hash[string[j]] + 1
	end
	j = j + 1	
end	

p  sub_string