# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"
a = [0,4,3,-1]
s = 2
# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a, s)
sum_array = []
  a.sort!
  a.each_with_index do |e,i|
    each_array = []
    each_array.push(e)
    j = i + 1
    while(j<a.count)
      
      each_array.push(a[j])
      sum1 = each_array.inject(&:+)
      ave = sum1.to_f/each_array.count
      break if ave > s
      if s == ave
        sum_array.push(each_array) unless each_array.count == a.count
      end
      j+=1
    end
  end
  p sum_array
end

solution(a,s)
