# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
    d_p = Array.new(m){ Array.new(n) { 0 } }
    rec_call(m,n,0,0,d_p)
            
end

def rec_call(m,n,c_i,c_j,d_p)
   return 0 if c_i > m -1 || c_j > n-1
   return 1 if c_i == m -1 && c_j == n-1
   count = 0 
   d_p[c_i][c_j] =  rec_call(m,n,c_i+1, c_j,d_p) +  rec_call(m,n,c_i, c_j+1,d_p) + count if d_p[c_i][c_j] == 0
   return d_p[c_i][c_j]
end    