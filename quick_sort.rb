class Array
	def quick_sort
		if size == 0
			return self
        end
	    	pivot = delete_at(rand(size))
	    	left, right = partition(&pivot.method(:>))
	    	return *left.quick_sort, pivot, *right.quick_sort 			
    end		
end


p [5,2,6,1,8].quick_sort