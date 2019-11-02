# class Stark

#     def initialize
#         @u_array = []
#     end
    
#     def push(el)
#         u_array.push(el)
#         self #add self so it returns the object instead of the array to avoid people doing array manipulations
#     end

#     def pop
#         @u_array.pop
#     end

#     def peek
#         @u_array.last
#     end

    
#     private
#     attr_reader :u_array
# end

# 

class MyMap
    def initialize
        @u_array = []
    end

    def set(key,value)
        # first need to check if key exist alreay not
        keys = @u_array.map {|pair| pair[0]}
        if keys.include?(key)
            @u_array.each {|pair| pair[0] == key ? pair[1] = value :pair}
        else
        @u_array << [key,value]
        end
        self
    end

    def get(key)
        @u_array.each do |pair|
            return pair if pair[0] == key
        end
        nil
    
    end

    def delete(key)
        @u_array.reject! {|pair| pair[0] == key}
        
    end

    def show
       deep_dup(u_array)
    end

    private
    attr_reader :u_array
    def deep_dup(arr)
        # @u_array.map {|sub| sub.dup}
        arr.map {|sub| sub.is_a?(Array) ? deep_dup(sub) : sub}
    end
        
end
