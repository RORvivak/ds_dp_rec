a = []
a[2] = "abc"
a[3] = "def"
b = []
i = 0
result = ""

def rec(s,s1,in1,result)
	return "" if in1 == s1.length
    result = (s1[in1] + s +","+rec(s,s1,(in1+1), result) +result)
	return result
end	

a[2].each_char do |e|
	b.push(rec(e,a[3],i,result))
end

p b