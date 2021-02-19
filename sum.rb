
a = [5, 8, 10,16,12, 30, 35,65,77,88]
u = a.length - 1
l = 0
e = 35
while(l<=u) do
mid = (l+u)/2
# p a[mid]
	if a[mid] == e
		p a[mid]
		return
	elsif a[mid] < e
	   l = 	(mid + 1)	
	   # p mid
	else
	   u = mid - 1
	   # p a[mid]
	   # return
	end
end

p "Not found"	
	      