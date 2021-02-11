# @param {Integer[]} height
# @return {Integer}
def max_area(height)
    a_pointer = 0
    b_pointer = height.length - 1
    max_area = 0
    
    while(a_pointer < b_pointer) do
        if height[a_pointer] < height[b_pointer]
            max_area = [max_area, [height[a_pointer], height[b_pointer]].min*(b_pointer - a_pointer)].max
            a_pointer=a_pointer+1
        # p max_area           
        else
            max_area = [max_area, [height[a_pointer], height[b_pointer]].min*(b_pointer - a_pointer)].max
            b_pointer-=1
            # p max_area
        end  
    end    
        
    return max_area
end

height = [1,8,6,2,5,4,8,3,7]
max_area(height)