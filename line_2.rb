class Node 
    attr_accessor :value, :ref

    # def initialize(v)
    #     value = v
    #     ref = r
    # end    
end


class LinkedList
    
    def insert(head, value)
        node = Node.new
        node.value = value
        if head.nil?
            o_head = node
            return node
        end 

        current = head

        until current.ref.nil?
            current = current.ref
        end

        current.ref = node
        head
    end

    def display(head)
        current = head
        until current.nil?
            p current.value
            current = current.ref
        end    
    end

    def reverse(head)
        current = head
        n = head
        prev = nil

        until current.next.ref.nil?
            n = current.next.ref
            current.ref = prev
            prev = current.ref
            current = n
        end    
            current.next.ref = nil
    end     


end

head = nil
p "Enter the limit \n"
a = gets.chomp.to_i
lk = LinkedList.new
a.times do
    p "Enter the no \n"
    c = gets.chomp.to_i
    head = lk.insert(head,c)
end

 a = lk.reverse(head)

 a.display(head)