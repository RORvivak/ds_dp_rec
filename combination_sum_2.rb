# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
   
    
def combination_sum2(candidates, target)
   find_combination(candidates, target, 0, [], [])
end

def find_combination(candidates, target, start, ans, comb)
 
    return if target < 0

    ans << candidates[start] if target - candidaQAtes[start] == 0 || target - candidates[start] > 0
    if target == 0
      p ans
        return ans
    end   

    
    for i in (start..candidates.length - 2) do
       p i
        el =  find_combination(candidates,  (target - candidates[i]).clone, i+1, ans.clone, comb)
        comb.push(el) unless el.nil?
        
    end    
    return comb
end    