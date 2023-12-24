class LinkedList
    @head = nil

    def traverse
        temp = @head
        temp = temp.pointer until temp.pointer.nil?
        temp
    end

    def prepend (value)
      if @head.nil?
        @head = Node.new (value)
      else
         @head = Node.new(value, @head)
      end
    end

    def append (value)
        if @head.nil?
            self.prepend(value)
        else
            tail_node.pointer = Node.new(value)
        end
    end
    
    def size
        counter = 0
        if !@head.nil
        until traverse.pointer.nil? do
            
         counter
    end

    def head
      @head.value
    end
    
    def tail
      traverse.value    
    end

    def node_at(index) #probably not needed, replace with #at(index)?
      counter = 0
      until counter = index do
        # traverse issue (try temp =@head + temp = temp.pointer)
        counter += 1
      end
      
    end

    def at(index)
      node_at(index).value 
    end

    def pop
        node_at(self.size -2).pointer = nil #probably node_at not needed
    end

    def contains?(value)

    end
    
end

class Node
    attr_accessor :value, :pointer

    def initialize(value = nil, pointer = nil)
      @value, @pointer = value , pointer
    end
end