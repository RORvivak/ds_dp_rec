# Given two strings s and t, return the minimum window in s which will contain all the characters in t. If there is no such window in s that covers all characters in t, return the empty string "".

# Note that If there is such a window, it is guaranteed that there will always be only one unique minimum window in s.
def min_window(s, t)
   s_length = s.length - 1
   h = {}
   h.default = 0
   
   t.split("").each do |e|
       h[e]+=1
   end
   
  h_s = {}
  start = 0
  finish = 0  
  str = ""
 flag = false
  h_s = h.clone
    str_length = Float::INFINITY
 
  s.each_char do |e|
     flag = true if h_s[e] > 0
     h_s[e]-=1 if h_s[e] >=1
      ar =  h_s.values.uniq
      finish +=1
      start += 1 if !flag
      if ar.length == 1 &&  ar[0] == 0
          flag = true
          p h_s
          h_s = h.clone
          flag = false
          tmp_str = s[start..finish - 1]
          p tmp_str
          tmp_str_length = tmp_str.length
          start = finish
          if tmp_str_length < str_length
              str = tmp_str
              str_length = tmp_str_length
          end  
      end
      
     
   end    
  
 
  return str
    
end