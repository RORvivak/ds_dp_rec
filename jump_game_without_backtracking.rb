# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
    last_position = nums.length - 1
    
    for i in last_position.downto(0)
        if i + nums[i] >= last_position
            last_position = i
        end    
    end 
    
    return last_position == 0
end

