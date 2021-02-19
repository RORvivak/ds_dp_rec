# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
    string_length = s.length
    return s if string_length == 1
    
    i = 0
    string_array = []
    down = false
    r = 0
    j = 0
    st = ""
    while(i < string_length) do
       if string_array[r].nil?
           string_array[r] = [s[i]]
       else   
            string_array[r].push(s[i])
       end    
        if (r == num_rows-1) 
            down =  true
        elsif (r == 0) 
          down =  false
        end 
          
        (down) ? r-=1 : r+=1
        i+=1
    end

    # p string_array
    
    while(j<num_rows) do
        st+=string_array[j].join("") if !string_array[j].nil?
        j+=1
    end
    p st
end

s= "ABC"
num_rows = 1
convert(s, num_rows)
