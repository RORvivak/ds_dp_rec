# @param {String} digits
# @return {String[]}

def cal(string, result, dig, start)
  return string.join("") if string.length == dig.length
  
    for i in (start..dig.length-1) do
        for j in (0..dig[0].length-1) do
            string << dig[i][j]
            result << cal(string, result, dig, start+1)
            string.pop
        end
    end 
    
    return result
    
end
 

def letter_combinations(digits)
    h = {2 => "abc", 3 => "def", 4=>"ghi", 5=>"jkl", 6=> "mno", 7=> "pqrs", 8=>"tuv", 9=>"wxyz"}
    
    mat = []
    digits.split("").each do |e|
        mat << h[e.to_i].split("")
    end
    
    r = cal([], [], mat,0)
    return r
end

p letter_combinations("23")