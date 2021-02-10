

a = []

a = [['A', 'B', 'C', 'E'], 
	 ['S', 'F', 'C', 'S'], 
	 ['A', 'D', 'E', 'E']]

word = 'SFA'
w_i = 0
result = false

def rec(r,c,ar,w,wo_i,result)
	# p ar[r][c]
	#  p w[wo_i]
	 return true if (wo_i == w.length - 1) && ar[r][c] == w[wo_i]
	# p wo_i == w.length - 1
	return false if !ar.nil? && !w.nil? && ar[r][c] != w[wo_i]
	wo_i = wo_i + 1
	ar[r][c] = 0
	return rec(r+1,c,ar,w,wo_i,result) if ar.length > r+1 &&  ar[r + 1][c] == w[wo_i]
	return rec(r-1,c,ar,w,wo_i,result) if (r - 1)>= 0 && ar[r - 1][c] == w[wo_i]
	# r = r - 1 if result
   	return rec(r,c+1,ar,w,wo_i,result) if (c + 1) < ar[0].length && ar[r][c+1] == w[wo_i]
   	# c = c + 1 if result
	return rec(r,c-1,ar,w,wo_i,result) if (c - 1)>= 0 && ar[r][c-1] == w[wo_i]
	# c = c - 1 if result
end	
 r1 = 0
 c1 = 0
while(r1<a.length) do 
	while(c1<a[0].length) do
		# 
		 
			result = rec(r1,c1,a,word,0,result) if a[r1][c1] == word[0]
			c1=c1+1
		    # p result
			if result == true
				p true
				return
		    end		
    end		
	# p r1
	r1=r1+1
	c1 = 0
end

p false if result.nil?
