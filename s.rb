=begin
# Sample code to perform I/O:

name = gets.chomp                # Reading input from STDIN
print "Hi, #{name}.\n"           # Writing output to STDOUT

# Warning: Printing unwanted or ill-formatted data to output will cause the test cases to fail
=end

# Write your code here

array_length = gets.chomp.to_i
special_array = []
special_no_count = 0
result_array = []


special_array = gets.split(" ").map(&:to_i)
return false if special_array.length == 0 && array_length != special_array.length

special_array.each do |e|
    special_array.each do |e1|
        if e > e1 && e%e1 == 0
            result_array << e
        end    
    end    
end 

puts result_array.uniq!.count