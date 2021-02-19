def solution(a)
  return if a.empty?
 a =  a.sort
  return 1 if a.first < 0
  a.each_with_index do |e,i|
  	p a
    if (e!=a[i+1] && e + 1 != a[i + 1])
    	p (e+ 1)
      return (e+1)
    end  
  end  
end
a = [1,3,4,6,1,2]
solution(a)