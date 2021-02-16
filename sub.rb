# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    return 0 if s.length == 0
    hashv = {}
    hashv.default = 0
    i = 0
    j = 0
    l = 0
    max_l = 0
    # check = true
    while(i<s.length && j <s.length) do
        # return if j == 3

        if hashv[s[j]] == 0
           l = (j - i + 1)
           p l
           hashv[s[j]] = hashv[s[j]] + 1
           j= j + 1
        else 
            i = j
            max_l = l if l>max_l
            # check = false
            hashv = {}
            hashv.default = 0
            p hashv
        end   
    end
    p i
    p j
    a =  (max_l < l) ? l : max_l
p a
    
end

b = "dvdf"
length_of_longest_substring(b)

