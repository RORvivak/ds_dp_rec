# @param {Integer[]} gas
# @param {Integer[]} cost
# @return {Integer}

# There are n gas stations along a circular route, where the amount of gas at the ith station is gas[i].

# You have a car with an unlimited gas tank and it costs cost[i] of gas to travel from the ith station to its next (i + 1)th station. You begin the journey with an empty tank at one of the gas stations.

# Given two integer arrays gas and cost, return the starting gas station's index if you can travel around the circuit once in the clockwise direction, otherwise return -1. If there exists a solution, it is guaranteed to be unique
def can_complete_circuit(gas, cost)
    left_out = []
    diff = 0
    index = 0
    cost.each_with_index{|e,i| left_out << gas[i] - e}
    return -1 if left_out.sum < 0
     
    for i in (0..gas.count - 1)
        diff += gas[i] - cost[i]
        
        if diff < 0
            i = i + 1
            index = i
            diff = 0
        end    
    end
    
    index
end