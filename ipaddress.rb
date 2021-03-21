# @param {String} s
# @return {String[]}
# Given a string s containing only digits, return all possible valid IP addresses that can be obtained from s. You can return them in any order.

# A valid IP address consists of exactly four integers, each integer is between 0 and 255, separated by single dots and cannot have leading zeros. For example, "0.1.2.201" and "192.168.1.1" are valid IP addresses and "0.011.255.245", "192.168.1.312" and "192.168@1.1" are invalid IP addresses. 
# Input: s = "25525511135"
# Output: ["255.255.11.135","255.255.111.35"]


def dfs(string, substring, index, result)

    if string.length == 0 || index == 4
        
        if string.length == 0 && index == 4
          result << substring[0..substring.length - 2] 
        end
        return
    end
    dfs(string[1, string.length - 1], substring + string[0, 1]+ ".", index + 1, result) 
    dfs(string[2, string.length - 1], substring + string[0, 2]+ ".", index + 1, result) if string.length > 1 && string[0, 1].to_i != 0
    dfs(string[3, string.length - 1], substring + string[0, 3]+".", index + 1, result) if string.length > 2 && (string[0, 3]).to_i && string[0, 1].to_i != 0 && string[0, 3].to_i <= 255
end    

def restore_ip_addresses(s)
    result = []
    return result if s.length == 0 || s.length > 12 || s.length < 4
    
    dfs(s, "", 0, result)
    return result
end

