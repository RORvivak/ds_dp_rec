def fact(n)
  return 1 if n == 1
  n*fact(n-1)
end

def find_perm(nums, answer, set)
 if nums.empty?
  answer.push(set.clone)
 end 

  for i in (0..nums.length - 1) do
    new_nums = nums.clone
    new_nums.delete_at(i)
    set.push(nums[i])
    find_perm(new_nums, answer, set)
    set.pop
    return answer if fact(nums.count) == answer.count
  end
 end

def permute(nums)
  answer = []  
  set = []
  element =  find_perm(nums, answer, set)
  return element
end

p permute([1,2,3])