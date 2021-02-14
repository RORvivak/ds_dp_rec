def fact(n)
  return 1 if n == 1
  n*fact(n-1)
end  
def find_perm(nums, answer, set, count)
     answer = answer.clone
     if nums.empty?
      p set
      answer.push(set)
      p answer.object_id
      p answer
      return true
     end 
    
      for i in (0..nums.length - 1) do
          new_nums = nums.clone
          new_nums.delete_at(i)
          set.push(nums[i])
          find_perm(new_nums, answer, set, count)

          set.pop
      end
     
    
end    

def permute(nums)
  answer = []  
  set = []
  count = fact(nums.count)
  element =  find_perm(nums, answer, set, count)
  return element
end

permute([1,2,3])    