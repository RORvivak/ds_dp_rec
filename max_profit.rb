def reverse_chain(str)
	length_array = []
	str.split(" ").reverse.each{|e| length_array.push(e.size)}
	length_array
end	

p reverse_chain("I want to work  at    Pair    Finance ")