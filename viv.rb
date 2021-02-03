


no = gets.chomp.to_i


arr_lim = gets.chomp.to_i

arr = []

arr_lim.times do 
 arr.push(gets.chomp.to_i)
end



i = 0
j = arr_lim - 1

while(i < (arr_lim - 1) && j > 0) do

	if(arr[i] + arr[j] > no)
		j = j - 1
    elsif((arr[i] + arr[j] < no))
    	i  = i +1
    elsif((arr[i] + arr[j] == no))
    	if (i != j)
    		p "#{arr[i].to_s}"
    		p "#{arr[j].to_s}"
    	end	
    	
    	i = i + 1
    	j = j - 1
    end 	
end