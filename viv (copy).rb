class Node 
    attr_accessor :value, :ref

    def initialize(v)
        value = v
    end    
end


class LinkedList
    head = Node.new

    def initialize(*values)
        len = (values.length - 2)
        values.each_with_index(i,e)
            return if i = len
            el = Node.new(e)
            el2 = Node.new(values[i+1])
            el2.ref = el
        end
    end

end

s = LinkedList.new(1,2,3,4)
p s