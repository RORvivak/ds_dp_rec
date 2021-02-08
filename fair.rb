# @param {Integer[]} nums
# @return {Integer}
    @count = 0
def ways_to_make_fair(nums)
    odd_sum = []
    even_sum = []
    
    nums.each_with_index do |e,i|
        if i == 0
            odd_sum.push(e)
            even_sum.push(0)
        elsif (i+1)%2 == 0
            odd_sum.push(odd_sum[i-1])
            even_sum.push(even_sum[i-1] + e)
        elsif (i+1)%2 == 1
            even_sum.push(even_sum[i-1])
            odd_sum.push(odd_sum[i-1] + e)
        end
    end
    
    nums.each_with_index do |e,i|
        # p i if i == 0 && even_sum.last == odd_sum.last - odd_sum.first
            odd = even_sum.last - even_sum[i]
            even = odd_sum.last - odd_sum[i]
            e_sum =  even_sum[i] + even
            o_sum = odd_sum[i] + odd
            # p e_sum
            # p o_sum

            if (i+1)%2 == 0
                 @count+=1 if e_sum - nums[i] == o_sum
            elsif (i+1)%2 == 1
              @count+=1  if e_sum  == o_sum - nums[i]
            end 
               
    end 
    p @count    
end

ways_to_make_fair([1,1,1])