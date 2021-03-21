# @param {Integer[][]} grid
# @return {Integer}

def min_path_sum(grid)
    grid.each_with_index do |r, i|
        r.each_with_index do |c, j|
            next if i == 0 && j == 0
            
            if i==0 && j != 0
                grid[i][j] = grid[i][j-1] +  grid[i][j]
            elsif i!=0 && j == 0
                grid[i][j] = grid[i][j] +  grid[i-1][j]
            elsif i!=0 && j!= 0
                grid[i][j] = [grid[i][j-1],grid[i-1][j]].min + grid[i][j]
            end    
        end
    end
    grid[-1][-1]   
end