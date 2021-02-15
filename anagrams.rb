# Runtime: 156 ms, faster than 70.86% of Ruby online submissions for Group Anagrams.
# Memory Usage: 213.3 MB, less than 89.71% of Ruby online submissions for Group Anagrams.
# Next challenges: 
def group_anagrams(strs)
    h = {}
    answer= []
    h.default = []
    strs.each do |e|
        sort_e = e.split("").sort.join("")
        h[sort_e] = h[sort_e].clone.push(e)
    end 
    
    h.values.each do |e|
        answer.push(e)
    end 
    return answer
end