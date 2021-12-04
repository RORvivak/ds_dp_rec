# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}


def findc(start, end_length, target, candidates, result)
    
    return if start >= end_length
    if target == 0
      return result
    end
    
    if target < 0
        return
    end  
    
    while(start<candidates.length-1)
       findc(start, candidates.length-1, target - candidates[start], candidates, result.push(candidates[start]))
        start+=1
    end    
end    
    
def combination_sum2(candidates, target)
    result = []
    return if target<0
     a= []
    candidates.sort!
    # candidates.each_with_index do |e,i|
    a << findc(0, candidates.length-1, target, candidates, result)
    # end
    return a
end