# @param {Integer[][]} grid
# @return {Integer}
# 64. Minimum Path Sum

def min_path_sum(grid)
    row_size = grid.length - 1
    column_size = grid[0].length - 1
    return mid_size_finder(grid, 0, 0, 0, row_size, column_size)
end

def mid_size_finder(grid, start_r, start_c, sum, row_size, column_size)
   return 0 if start_r > row_size || start_c > column_size 
   sum += grid[start_r][start_c] 
    # p sum
    return sum if start_r == row_size  && start_c == column_size 
    l_sum = 0
    r_sum = 0
    for i in (start_r..row_size) do
        for j in (start_c..column_size) do
            r_sum = mid_size_finder(grid, i+1, j, sum, row_size, column_size)
            l_sum = mid_size_finder(grid, i, j+1, sum, row_size, column_size)
             p r_sum
            p l_sum
            min_sum = (l_sum > r_sum)? r_sum : l_sum
        end    
    end
    
    return min_sum
end    
    