# @param {String} s
# @param {String} t
# @return {String}
def min_window(s, t)
   return s if s == t
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
 
  while finish <= s.length
   
     flag = true if h_s[s[finish]] > 0
     h_s[s[finish]]-=1 if h_s[s[finish]] >=1
      ar =  h_s.values.uniq
      
      finish +=1 
      start += 1 if !flag
      if ar.length == 1 &&  ar[0] == 0
          flag = true
         
          h_s = h.clone
          flag = false
          tmp_str = s[start..finish - 1]
          p tmp_str
          tmp_str_length = tmp_str.length
         
          start = finish 
          p finish
          if tmp_str_length < str_length
              str = tmp_str
              str_length = tmp_str_length
          end 
          start = start - 1 if  h[s[start - 1]]  >= 1
    
          
            finish = start  
      end
      
  
   end    
  
 
  return str
    
end