# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}



def findc(start, end_length, target, candidates, result, e)
	p result if target == 0
   p e
    return if start >= end_length
    if target == 0
      return result.push(e)
    end
    
    if target < 0
        return
    end  
    
    i = start
    while(i<candidates.length-1)
       
       findc(i, candidates.length-1, target - candidates[start], candidates, result, candidates[start]) if i == start || candidates[i-1] !=  candidates[i]
       result.shift
        i+=1
    end    
end    
    
def combination_sum2(candidates, target)
    result = []
    return if target<0
     a= []
    candidates.sort!
    # candidates.each_with_index do |e,i|
    a << findc(0, candidates.length-1, target, candidates, result, candidates[0])
    # end
    return a
end
combination_sum2([10,1,2,7,6,5], 8)