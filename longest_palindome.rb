puts "Enter the string"

pal_string = gets.chomp

array_string = pal_string.split("")
dp_array = []
colu = 0
row = 0
max = 0
p array_string

	i = 0
	while(i < array_string.length) do
		col = Array.new(array_string.length)
		col[i] = 1
		dp_array[i] = col
		i+=1
    end	

    i = 0
    while(i < array_string.length) do
		if(array_string[i] == array_string[i+1])
			dp_array[i][i+1] = 1
		end
		i+=1	
    end				

	k = 2
	while(k < array_string.length - 1) do
		i = 0
		while(i < array_string.length - k) do
			j = i + k
		    if(array_string[i] == array_string[j] 	&& dp_array[i+1][j-1] == 1)
		    	dp_array[i][j] = 1
		    	p j - i
		    	if max < j - i
		    		max = j - i
		    		col = j
		    		row = i
		        end		
		    end
	    	i+=1
	    end
	    k+=1
    end	

    p dp_array.each{|e| p e}

if(col!=row)
	puts pal_string[row..col]
else
	puts -1
end	