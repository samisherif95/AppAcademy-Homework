require 'set'
class GraphNode
    attr_accessor :val, :neighbors
    def initialize(val)
        self.val = val
        self.neighbors = []
    end

    def add(neighbor)
        self.neighbors << neighbor
    end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

def bfs(starting_node, target_value)
    my_queue = [starting_node]
    visited = Set.new()
    until my_queue.empty?
        popper = my_queue.shift
        unless visited.include?(popper)
            return popper if popper.val == target_value
            visited.add(popper)
            my_queue += popper.neighbors
        end
    end
    nil
end

p bfs(a, "b")