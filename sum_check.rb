Given an array nums of n integers where n > 1,  return an array output such that output[i] is equal to the product of all the elements of nums except nums[i].

# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
    return nums if nums.all?{|e| e == 0}
    product_value = nums.reject{|e| e == 0}.inject(&:*)
    product_output = []
    p product_value
    nums.each do |e|
        e = (e == 0)? product_value : product_value/e
        
        product_output.push(e)
    end        
    product_output
end