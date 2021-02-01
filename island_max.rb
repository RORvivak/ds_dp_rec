@islands = []

puts "Enter the number of rows"
puts "Enter the number of columns"

# rows = gets.chomp.to_i
# columns = gets.chomp.to_i
@rows = 4
@columns = 5
queue = []

i = 0
j = 0
# while(i < rows) do
# 	a = []
# 	while(j < columns) do
# 		a[j] = gets.chomp.to_i
# 		# queue.push([i,j]) if islands[i][j] == 
# 		j = j + 1
# 	end	
# 	islands[i] = a
# 	i = i + 1
# 	j = 0
# end

@islands = [[1, 1, 0,0,0,], [1,1,0,0,0], [0,0,1,0,0], [0, 0, 0, 1,1]]


p @islands

def dfs(island_copy, i1, j1)
	return 0 if(i1 <0 || j1<0 || j1>=@columns || i1>=@rows || @islands[i1][j1] == 0)
	@islands[i1][j1] = 0
	snum = 1
	snum = snum +  dfs(@islands, i1+1, j1) + dfs(@islands, i1-1, j1) + dfs(@islands, i1, j1+1) + dfs(@islands, i1, j1-1)
	
	
	
	return snum

end	
i = 0
j = 0
num = 0
while(i < @rows) do
	while(j < @columns) do
		if(@islands[i][j] == 1)
			num = [num,dfs(@islands, i, j)].max
			p num
		end	
		j = j + 1
	end
	i = i + 1
	j = 0	
end

puts num