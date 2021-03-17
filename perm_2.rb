# Given a collection of numbers, nums, that might contain duplicates, return all possible unique permutations in any order.

 

# Example 1:

# Input: nums = [1,1,2]
# Output:
# [[1,1,2],
#  [1,2,1],
#  [2,1,1]]


def permute_comb(nums, params, result, h)
	return params if params.length == nums.length

	
    h.keys.each do|e|
    	if h[e] > 0
    		params << e
    		h[e] -= 1
    		el =  permute_comb(nums, params.clone, result, h)
    		result << el if !el.empty?
            params.pop
            h[e] +=1
        end    
    end	

    result	

end	

def permute_unique(nums)
    return [nums] if nums.uniq.length == 1
	h = {}
	h.default = 0
	nums.each do |e|
		h[e]+=1
    end

    permute_comb(nums, [], [], h).select!{|el| el.count == nums.count}
end




def permute_comb(nums, params, result, h)
	return params if params.length == nums.length

	
    h.keys.each do|e|
    	if h[e] > 0
    		params << e
    		h[e] -= 1
    		el =  permute_comb(nums, params.clone, result, h)
    		result << el if !el.empty?
            params.pop
            h[e] +=1
        end    
    end	

    result	

end	

def permute_unique(nums)
    return [nums] if nums.uniq.length == 1
	h = {}
	h.default = 0
	nums.each do |e|
		h[e]+=1
    end

    permute_comb(nums, [], [], h).select!{|el| el.count == nums.count}
end


p permute_unique([1,2,3])