# 42. Trapping Rain Water
# Hard

# Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it can trap after raining.

def trap(height)
    left = []
    right = Array.new(11)
    height_index = height.length - 1
    
    for i in (0..height_index) do
        max_left = [height[i-1], left[i-1]].max if i!=0
        max_left = 0 if i == 0
        left.push(max_left)
    end   
    
    for i in height_index.downto(0) do
        max_right = [height[i+1], right[i+1]].max if i != height_index
        max_right = 0 if i == height_index
        right[i] = max_right
    end
    
    sum = 0  
    for i in (0..height_index) do
        min_val = [left[i], right[i]].min
        s = 0
        s = min_val - height[i] if min_val > height[i]
        sum = sum + s
    end
    
    return sum
end