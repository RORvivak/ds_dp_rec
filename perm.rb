def fact(n)
  return 1 if n == 1
  n*fact(n-1)
end  
def find_perm(nums, answer, set, count)
    answer.push(set)  if nums.empty?
    if count == answer.length
      p answer
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

p permute([1,2,3])    