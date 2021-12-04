require 'set'

class Node
    def initialize(name)
        @vertices = name
        @adjacents = Set.new
    end

    def add(n)
        @adjacents<<n
    end 

    def v_name
        @vertices
    end

    def adjacents
        @adjacents
    end       
end    

class Graph
    def add(n1, n2)
        n1.add(n2)
        n2.add(n1)
    end
    
    def bfs(start_node)
        queue = [start_node]
        visited_node = [start_node.v_name]

        while queue.any?  do
            c_node = queue.shift
            c_node.adjacents.to_a.each do |e|
                next if visited_node.include?e.v_name
                queue << e
                visited_node << e.v_name
            end        
        end

        p visited_node
    end    

end    


n1 = Node.new(1)

n2 = Node.new(2)
n3 = Node.new(3)
n4 = Node.new(4)

n5 = Node.new(5)

g = Graph.new

g.add(n1, n2)
g.add(n1, n4)
g.add(n1, n3)
g.add(n3, n5)
g.add(n4, n5)

g.bfs(n1)