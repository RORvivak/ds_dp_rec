class SumCombination
	def ListCollection
		@list = [10, 1, 2, 7, 6, 1, 5]
		@collection = []
		nos = []

		# puts "Enter the limit \n"
		# limit = gets.chomp.to_i
		# i = 0
		# while(i < limit) do
		#   i = i + 1
		#   n = gets.chomp.to_i
		#   @list.push(n)
		# end

		@list.sort!
		FindSumCombination(0, 8, @list, nos)
		p @collection
		return @collection
	end	
        
	def FindSumCombination(index, target, list, nos)
		# nos = []
		if(target == 0)

			@collection.push(nos)
		    return @collection
			end

		if(target < 0)
				return
	    end

	    @list.each_with_index do |v,i|
	    	if(i == index || @list[i] != @list[i - 1])
	    		nos.push(@list[i])
	    		# p nos
	    		# @list[i]
	    		FindSumCombination(index + i + 1, target - @list[i], @list, nos)
	    		nos.shift
	    	end	
	    end	



	end	

end	

a = SumCombination.new
a.ListCollection
