#!/bin/ruby

require 'json'
require 'stringio'


#
# Complete the 'funWithAnagrams' function below.
#
# The function is expected to return a STRING_ARRAY.
# The function accepts STRING_ARRAY text as parameter.
#

funWithAnagrams(['code', 'doce', 'ecod', 'farmer', 'frame'])
def funWithAnagrams(text)
   a_length = text.length
   i = 0
   
   while(i < a_length)  do
        h_c = {}
        h_c.default = 0
        text[i].split(",").each do |e|
            h_c[e] = h_c[e] + 1
        end  
      
        j = i + 1
        while(j<a_length) do
            if text[j].length == text[i].length 
            
                h_p = {}
                h_p.default = 0
                text[j].split("").each do |e|
                    h_p[e] = h_p[e] + 1
                end
            end
            check = text[i].split(",").all?{|e| h_c[e] == h_c[p]}
            if check
                text.delete_at(j) 
                a_length = text.length 
            end
            j+=1   
        end
        i+=1
    end     

end
fptr = File.open(ENV['OUTPUT_PATH'], 'w')