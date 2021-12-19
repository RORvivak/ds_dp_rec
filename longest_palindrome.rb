input_string = gets.chomp.chomp

@result_start = 0
@result_length = 0

i = 0

def find_palindrome(pal_check_string, start_index, end_index)
	begin_index = start_index
	finish_index = end_index
	
	while(begin_index >= 0 && finish_index < pal_check_string.length && pal_check_string[begin_index] == pal_check_string[finish_index]) do
		begin_index-=1
		finish_index+=1	
		# p pal_check_string[end_index]
		# p pal_check_string[finish_index]
	end

	if(@result_length < (finish_index - begin_index - 1))
		@result_start = begin_index + 1
    	@result_length = finish_index - begin_index - 1
    end 
    # p ((finish_index - begin_index - 1))		
end	
# find_palindrome(input_string, 3, 3)
while(i < input_string.length) do
	find_palindrome(input_string, i, i)
	find_palindrome(input_string, i, i+1)
	i+=1
end
@result_length = @result_length - 1 if input_string.length.odd?
puts (input_string[@result_start..(@result_start + @result_length)])
