# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
    return nums if nums.all?{|e| e == 0}
    return nums.reverse if nums.length == 2
    product_value = nums.reject{|e| e == 0}.inject(&:*)
    product_output = []
   
    zero_check = nums.any? {|e| e==0}
    nums.each_with_index do |e,i|
        p e
        e = (e == 0)? product_value : product_value/e if !zero_check
        e = product_value if zero_check && e == 0
        e = 0 if zero_check && e != 0
        product_output.push(e)
    end        
    product_output
end