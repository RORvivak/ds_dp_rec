# @param {Character[]} tasks
# @param {Integer} n
# @return {Integer}
# Given a characters array tasks, representing the tasks a CPU needs to do, where each letter represents a different task. Tasks could be done in any order. Each task is done in one unit of time. For each unit of time, the CPU could complete either one task or just be idle.

# However, there is a non-negative integer n that represents the cooldown period between two same tasks (the same letter in the array), that is that there must be at least n units of time between any two same tasks.

# Return the least number of units of times that the CPU will take to finish all the given tasks.

 

# Example 1:

# Input: tasks = ["A","A","A","B","B","B"], n = 2
# Output: 8
# Explanation: 
# A -> B -> idle -> A -> B -> idle -> A -> B
def least_interval(tasks, n)
    h = {}
    h.default = 0
    idle_slot = 0
    return n*(tasks.length - 1) + tasks.length if tasks.uniq.count == 1
    
    tasks.each{|e| h[e]+=1 }
    h = h.sort_by{|k,e| e}.to_h
    
    max_value = h.values.last - 1
    idle_slot = n*max_value
    
    h.values[0..h.values.length-2].each do |e|
        idle_slot-=[e, max_value].min
    end
    p n

(idle_slot > 0)? idle_slot + tasks.length : tasks.length
end
    