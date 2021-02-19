##62. Unique Paths
#Medium

#A robot is located at the top-left corner of a m x n grid (marked 'Start' in the diagram below).

#The robot can only move either down or right at any point in time. The robot is trying to reach the bottom-right corner of the grid (marked 'Finish' in the diagram below).

#WHow many possible unique paths are there?


def unique_paths(m, n)
   rec_call(m,n,0,0,0)
            
end

def rec_call(m,n,c_i,c_j,c)
    
   return 0 if c_i > m -1
   return 0 if c_j > n - 1
    for i in (c_i..m-1) do
        for j in (c_j..n-1) do
            c = c+1 if i == n -1 && j == m - 1
            rec_call(m,n,i+1, j,c) 
            rec_call(m,n,i, j+1,c)
        end
    end
    p c
    return c
end    