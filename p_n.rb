# @param {String} digits
# @return {String[]}

def cal(string, result, dig, start)
  return string.join("") if string.length == dig.length
    for i in (start..dig.length-1) do
        for j in (0..dig[i].length-1) do
            break if string.empty? && i == dig.length-1
            string << dig[i][j]
            value  = cal(string, result, dig, i+1)
            result << value if value.length == dig.length
            string.pop
        end
    end 
    return result.reject{|r| r.class.to_s == "Array"}
    
end
 

def letter_combinations(digits)
    return [] if digits.empty?
    h = {2 => "abc", 3 => "def", 4=>"ghi", 5=>"jkl", 6=> "mno", 7=> "pqrs", 8=>"tuv", 9=>"wxyz"}
    return h[digits.to_i].split("") if digits.length == 1
    
    mat = []
    digits.split("").each do |e|
        mat << h[e.to_i].split("")
    end
    
    r = cal([], [], mat,0)
    return r
end
p letter_combinations("234")