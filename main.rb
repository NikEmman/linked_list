class LinkedList
    @head = nil

    def tail
      temp = @head
      temp = temp.pointer until temp.pointer.nil?
      temp
    end


    def prepend (value)
      if @head == nil
        @head = Node.new (value)
      else
         @head = Node.new(value, @head)
      end
    end

    def append (value)
        if @head == nil
          prepend(value)
        else
          tail.pointer = Node.new(value)
        end
    end
    
    def size
        counter = 0
        if @head != nil
          counter = 1
          temp = @head
          until temp.pointer.nil? do 
          temp = temp.pointer
          counter += 1
          end
        end
        counter
    end

    def head
      @head
    end
    
    def at(index)
      counter = 0
      temp = @head
      until counter === index
        counter += 1
        temp = temp.pointer
      end
      temp
    end

    def pop 
      tail = nil
      at((size - 2)).pointer = nil
    end

    def contains?(value)
      temp = @head
      found = false
      loop do 
        if temp.value == value
          found = true
          break
        else
          temp = temp.pointer
        end
        break if temp.pointer.nil?
      end
      found = true if tail.value == value
      found
    end

    def find (value)
      temp = @head
      counter = 0
      until temp.pointer.nil? do
        if temp.value == value
          break
        else
          temp = temp.pointer
          counter += 1
        end
      end
      counter = nil unless contains?(value)
      counter
    end

    def to_s
      string1 = ""
      string2 = "nil"
      if @head != nil #not
        temp = @head
        string1 = "(#{temp.value})->"
        until temp.pointer.nil? do
          temp = temp.pointer
          string1 << "(#{temp.value})->"
        end
      end
      puts string1 + string2
    end

    def insert_at (value,index)
      temp = at(index)
      at(index-1).pointer = Node.new(value, temp)
    end

    def remove_at(index)
      temp = at(index)
      at(index-1).pointer = temp.pointer
    end
end

class Node
    attr_accessor :value, :pointer

    def initialize(value = nil, pointer = nil)
      @value, @pointer = value , pointer
    end
end

list = LinkedList.new
list.append("A")
list.append("B")
list.append("C")