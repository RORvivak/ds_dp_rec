# @param {Integer[]} nums
# @return {Integer[]}
# 238. Product of Array Except Self
# Given an array nums of n integers where n > 1,  return an array output such that output[i] is equal to the product of all the elements of nums except nums[i].

# Example:

# Input:  [1,2,3,4]
# Output: [24,12,8,6]

# Constraint: It's guaranteed that the product of the elements of any prefix or suffix of the array (including the whole array) fits in a 32 bit integer.

# Note: Please solve it without division and in O(n).

# Follow up:
# Could you solve it with constant space complexity? (The output array does not count as extra space for the purpose of space complexity analysis.)



def product_except_self(nums)
    output = []
    output[0] = 1
    nums_length = nums.length - 1
    
    tmp = 1
    for i in (1..nums_length)
        tmp = nums[i-1]*tmp
        output[i] = tmp
    end 
    p output
    tmp = 1
     (nums_length-1).downto(0).each do |i|
         p tmp
         tmp = tmp*nums[i+1]
        output[i] = output[i]*tmp
    end 
    
    return output
end