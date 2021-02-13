# @param {Integer[]} nums
# @return {Integer[][]}



def three_sum(nums)
    nums = nums.sort
    
    i = 0
    
    output = []
    
    while(i< nums.length ) do
        l = i + 1
         i = i + 1 if nums[i] == nums[i - 1] && i != 0

        
        j = nums.length - 1
        while(l<j ) do
        
            if nums[l] == nums[l-1] && l  - 1 != i
                l = l +1
            elsif nums[i] + nums[l] + nums[j] < 0
                l = l + 1
            elsif  nums[i] + nums[l] + nums[j] == 0 
                # p nums[i]
                # p nums[l]
                # p nums[l-1]
                # p nums
                output.push([nums[i], nums[l], nums[j]])
                num1 = nums[l]

                l = l + 1
                 j = j - 1
            else
                j = j - 1
            end    
        end
        i = i + 1    
    end
    p output
end    

[0,0,0]

 [-4, -1, -1, 0, 1, 2]
[-1, 0, 1, 0]
nums= [-2,0,0,2,2]

three_sum(nums)

-1
0
1