@number_array = gets.chomp.split(", ").map(&:to_i)
@output = [[]]

# @a_length = @number_array.length
# i = 0
# sub_sets = []


# def sub_set_element(start, sets, sub_set)
# 	j = start
# 	return sub_set if start == @a_length

# 	while(j<@a_length) do
# 		sets = sets.push(@number_array[j])
# 		sub_set.push(sets)
# 		j = j + 1
# 		sub_set = sub_set + sub_set_element(j, sets, sub_set)
# 	end
#     return sub_set
# end	

# while(i<@a_length) do
# 	sub_sets = sub_set_element(i, [], sub_sets)
# 	i = i + 1
# end	

# p sub_sets

@number_array.each do |e|
	@output.each do |e1|
		@output+= [(e1 + [e])]
	end	
end

p @output
