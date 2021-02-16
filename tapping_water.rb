# @param {Integer[]} height
# @return {Integer}
def trap(height)
    left = [0]
    right = [0]
    height_index = height.length - 1
    
    for i in (0..height_index) do
        max_left = [height[i-1], left[i-1]].max
        max_left = 0 if i == 0
        left.push(max_left)
    end   
    
     for i in (0..height_index) do
        max_left = [height[i-1], left[i-1]].max 
        max_left = 0 if i == 0
        left.push(max_left)
    end 
    
     for i in height_index.downto(0) do
        max_right = [height[i+1], right[i+1]].max if i != height_index
        max_right = 0 if i == height_index
        left.push(max_right)
    end
    
    for i in (0..height_index) do
        sum = left[i] + right[i]
    end
    
    return sum
end