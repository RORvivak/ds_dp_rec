# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  uniq_array  = a.uniq
  real_count = 0
  a.each_with_index do |e,i|
    dest_count = 0
    check_array = []

    j = i + 1
    while(j<a.count && uniq_array.count != check_array. count)
      dest_count +=1
      unless check_array.include?a[j]
        check_array.push(a[j]) 
      end
    end 
    real_count = dest_count if real_count < dest_count
  end
  return real_count 
end
 a = [2,1,1,3,2,1,1,3]
 solution(a)