p "Enter the r and c \n"
grid =[] 
r = gets.chomp.to_i - 1
c = gets.chomp.to_i - 1
num = []
p "Enter the number \n"
(0..r).each do |i|
	n = []
	(0..c).each do |j|
      nu = gets.chop.to_i
	  n[j] = nu
	end
	grid.push(n)
end

p grid

top = 0
bottom = r
left = 0
right = c
l = (r+1)*(c+1)

while(num.length<=l-1) do
    i =left
    
	while(i<=right) do
		num.push(grid[top][i])
		i+=1
	end
	top+=1
	# i = 0
	# p num
    i = top
	while(i<=bottom) do
		num.push(grid[i][right])
		i+=1
	end
	right-=1
	# i = 0
	i = right
	# p num

	while(i>=left) do
		num.push(grid[bottom][i])
		i-=1
	end
	bottom-=1
	# i = 0
	# p num
    i = bottom
	while(i>=top) do
		num.push(grid[i][left])
		i-=1
	end
	left+=1
	# i= 0
	# p num
end	

p num

