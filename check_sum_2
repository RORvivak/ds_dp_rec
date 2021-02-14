# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
   
    
def combination_sum2(candidates, target)
    answer = []
    set = []
    index = 0
    return [].push(candidates) if candidates.uniq.count == 1 && candidates[0] == target
    return [].push([candidates[0]]) if candidates.count == 2 && candidates[0] == target && candidates[0] == candidates[1]
    return [].push([candidates[0], candidates[1]]) if candidates.count == 2 && candidates.sum == target 
   result = find_combination(candidates,target,  answer,set, index)
end

def find_combination(cand, tar,ans, set, index)
    cand.sort!
    if tar == 0
        ans.push(set.clone)
        return
    end   
    
    if tar < 0
        return
    end    
    
    for i in (index..cand.length-1) do
        set.push(cand[i])
        cand_c = cand.clone
        cand_c.delete_at(i)
        if cand[i] != cand[i-1]
            find_combination(cand_c, tar - cand[i], ans, set, i)
        end    
        set.pop
    end
    return ans
end    

