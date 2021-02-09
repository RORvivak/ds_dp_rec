s = "AAAAAAAAAAABXXAAAAAAAAAA"
k = 3
def solution(s, k)
  char_hash = {}
  max_key = s[0]
  
  s.each_char do |e|
    char_hash[e] = 1 if char_hash[e].nil?
    char_hash[e] = char_hash[e] + 1
    if e != max_key && char_hash[max_key] < char_hash[e]
      max_key = e
    end  
  end
  
  length_string = s.length
  i = 0
  string = ""
  char_count = {}
  while(i<length_string) do
    if s[i] == max_key && s[i] != s[i+1]
      i = i + k
    else
      e = s[i]
      if s[i] == s[i+1]
        char_count[e] = 1 if char_count[e].nil?
        char_count[e] = char_count[e] + 1
      else
        string = string + (char_count[e].to_s + s[i])
      end
    end
    i = i + 1
  end
  p string
end

solution(s, k)