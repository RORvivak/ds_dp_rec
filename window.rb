sub_string = gets.chomp
actual_string = gets.chomp
string_array  = actual_string.split("")
sub_string_hash = {}
string_hash = {}
copy_string_hash = {}
string = ""
check_array = []

sub_string.each_char do |v|
	sub_string_hash[v] = 0 if sub_string_hash[v].nil?
	check_array.push(1)
	sub_string_hash[v] = sub_string_hash[v] + 1 unless sub_string_hash[v].nil?
end

i = 0
j = 0
string_length = actual_string.length
sub_string_hash.each{|k,v| copy_string_hash[k] = 0}
p copy_string_hash
# copy_string_hash = string_hashcopy_string_hash[actual_string[j]] = copy_string_hash[actual_string[j]] - 1 unless copy_string_hash[actual_string[j]].nil?
while( i <= string_length && j < string_length) do
	
    # p string_hashcopy_string_hash[actual_string[j]] = copy_string_hash[actual_string[j]] - 1 unless copy_string_hash[actual_string[j]].nil?
    # p check_array
    # p copy_string_hash
    # p check_array == copy_string_hash.values
    # p sub_string_hash.to_a
    # p string_hash
    p check_array == copy_string_hash.values
	unless check_array == copy_string_hash.values
		string_hash[actual_string[j]] = 0 if string_hash[actual_string[j]].nil?
	    (string_hash[actual_string[j]] = string_hash[actual_string[j]] + 1) unless string_hash[actual_string[j]].nil?
	    copy_string_hash[actual_string[j]] = copy_string_hash[actual_string[j]] + 1 if !copy_string_hash[actual_string[j]].nil? && copy_string_hash[actual_string[j]] <= string_hash[actual_string[j]]
	    j = j + 1
	    # p actual_string[(i)...j]
    else
    	string_hash[actual_string[i]] = string_hash[actual_string[i]] - 1
    	i = i + 1
    	copy_string_hash[actual_string[i]] = copy_string_hash[actual_string[i]] - 1 if !copy_string_hash[actual_string[i]].nil? && copy_string_hash[actual_string[i]] <= string_hash[actual_string[i]]
    	# if(i <  string_length && (sub_string_hash.to_a - string_hash.to_a).empty?)
    		# size = j - i
    		# left_right_size.push(i, j, size) if size > left_right_size[2]!copy_string_hash[actual_string[j]]
    		if string.empty? || string.size > (i-j)
    			string = actual_string[(i)...j] 
    		end	
    		p actual_string[(i)...j]
    	# end	unlessunless
    end
    p copy_string_hash
    		# p string
end	

p stringi