# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(num, target)
   return [-1,-1] if num.empty?
   start_point = 0
   end_point = 0
   array_length = num.length
   i = 0
    mid = (array_length)/2
    start_index = 0
    end_index = num.length - 1
    while(mid>1)
      if num[mid] < target
        start_index = mid + 1
      elsif num[mid] < target
        end_index = mid - 1
      elsif  num[mid] = target 
        break
      end
      mid = (start_index + end_index)/2
    end
     

     if num[mid - 1] < num[mid]
      start_point = mid
     else
      start_index = 0
      end_index = mid - 1
     end 
        
     mid_index = (start_index + end_index)/2
     while( mid_index>0)
        if num[mid_index] == target && num[mid_index - 1] < num[mid_index]
          start_point = mid_index
          break
        elsif target > num[mid_index]
          start_index = mid_index + 1
        elsif target == num[mid_index]
          end_index = mid_index - 1  
        end
        mid_index = (start_index + end_index)/2
     end 

     if num[mid - 1] > num[mid]
      start_point = mid
     else
      start_index = mid  -1
      end_index = num.length - 1
     end   

     mid_index = (start_index + end_index)/2
     while( mid_index>0)
        if num[mid_index] == target && num[mid_index + 1] > num[mid_index]
         end_point = mid_index
         break
        elsif target < num[mid_index]
          end_index = mid_index - 1  
        elsif target = num[mid_index]
          start_index = mid_index + 1
        end
        mid_index = (start_index + end_index)/2
     end    

      return [start_point, end_point]
    
   # return [-1,-1] if end_index.nil? && start_index.nil?
   #  return [start_index, end_index]
    
end

nums = [5,7,7,8,8,8,8,10,11]

n = search_range(nums, 8)
puts n
