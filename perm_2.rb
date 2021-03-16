# @param {Integer[]} nums
# @return {Integer[][]}


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
	h = {}
	h.default = 0
	nums.each do |e|
		h[e]+=1
    end

    permute_comb(nums, [], [], h)
end

r = permute_unique([1,2,3])
