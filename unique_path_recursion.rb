##62. Unique Paths
#Medium

#A robot is located at the top-left corner of a m x n grid (marked 'Start' in the diagram below).

#The robot can only move either down or right at any point in time. The robot is trying to reach the bottom-right corner of the grid (marked 'Finish' in the diagram below).

#WHow many possible unique paths are there?


# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
   rec_call(m,n,0,0)
end

def rec_call(m,n,c_i,c_j) 
   return 0 if c_i > m -1 || c_j > n - 1
   return 1 if c_i == m -1 && c_j == n-1
   count = 0
   count =  rec_call(m,n,c_i+1, c_j) +  rec_call(m,n,c_i, c_j+1) + count
   return count
end    