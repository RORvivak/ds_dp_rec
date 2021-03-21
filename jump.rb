# 55. Jump Game
# Given an array of non-negative integers nums, you are initially positioned at the first index of the array.

# Each element in the array represents your maximum jump length at that position.

# Determine if you are able to reach the last index.


def can_jump(nums)
    reach = can_reach(nums, 0)
    return reach
end

def can_reach(nums, current_index)
    return true if current_index >= nums.length-1
    return false if nums[current_index] == 0
    
    for i in (1..nums[current_index]) do
        p i
        result = can_reach(nums, current_index + i)
        return true if result
    end 
    return false
end    