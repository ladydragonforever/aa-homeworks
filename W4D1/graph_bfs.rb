require 'set'
require "byebug"
class GraphNode
    attr_reader :value
    attr_accessor :neighbors
    def initialize(value)
    @value = value
    @neighbors = []
    end

    def inspect
        @value.inspect
        # @neighbors.inspect
    end


   
    def bfs(starting_node, target, visited_nodes=Set.new())
        return nil if starting_node.nil?
        return starting_node if starting_node.value == target
        # debugger
        queue = [starting_node]

        until (queue.empty? || visited_nodes.include?(queue[0].value))
            current_node = queue.shift
            visited_nodes.add(current_node.value)
            return current_node if current_node.value == target
            queue.concat(current_node.neighbors)
        end
        nil
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
p a.bfs(a,"b")
p a.bfs(a,"f") 