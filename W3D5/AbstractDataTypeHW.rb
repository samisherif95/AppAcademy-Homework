class Stack
    attr_reader :stack
    def initialize
      # create ivar to store stack here!
      @stack = []
    end

    def push(ele)
      # adds an element to the stack
      @stack << ele
    end

    def pop
      # removes one element from the stack
      @stack.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack[-1]
    end
end

class Queue
    attr_reader :queue
    def initialize
        @queue = []
    end

    def enqueue(ele)
        @queue.unshift(ele)
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[0]
    end
end

class Map
    attr_reader :map
    def initialize
        @map = []
    end

    def set(key,value)
        (0...@map.length).each do |idx|
            if key == @map[idx][0]
                @map[idx][1] = value
                return 
            end
        end
        @map << [key,value]
    end

    def get(key)
        (0...@map.length).each do |idx|
            if key == @map[idx][0]
                return @map[idx][1]
            end
        end
    end

    def delete(key)
        value = get(key)
        @map.reject!{|pair| pair[0] == key}
        value
    end

    def show
        return @map
    end
end

  



 