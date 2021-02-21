def no_of_ways_form(steps, no_of_ways)
	return 1 if steps == 0
	
    i = 1
    num = []
    num[0] = 1

	while(i<=steps)
		total = 0
		# no_of_ways.each do |j|
			# num[i-j] = 0  if (i - j) == 0 && num[i-j].nil?
			total  = total + num[i-j] if (i - j) >= 0
	    # end
	    i = i + 1		
    	num[i] = total
    end

    return num[steps]
end	

no_of_ways = []

puts "Enter the number of ways"
no_of_ways = gets.chomp.split(" ").map!(&:to_i)
p no_of_ways
puts "Number of steps"
n = gets.chomp.to_i
puts no_of_ways_form(n, no_of_ways)

