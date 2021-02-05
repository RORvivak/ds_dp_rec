test_suit_count = gets.chomp.to_i
size_no_count = []
array = []
hash_no_count = {}
answer = []

test_suit_count.times do
	size_no_count << gets.chomp.split(" ").map(&:to_i)
end

size_no_count.to_h.keys.each do |v|
	# p v
	each_array = []
	v.times { each_array.push(gets.chomp.to_i) }
	array << each_array
end	

array.each_with_index do |array_element, i|
	i = 0
	found = true
	array_element.each do |e|
		p e
		# while(found) do
			if hash_no_count[e].nil?
				hash_no_count[e] = 1
			else
				hash_no_count[e] = hash_no_count[e] + 1
				if size_no_count[i][1] == hash_no_count[e]
					p hash_no_count
	                found = false
	                answer.push << e
	                break
				end	
			end	
	    # end
	end    		
end	

p answer