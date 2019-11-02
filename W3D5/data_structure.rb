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
        @u_array << [key,value]
        @u_array.each do |pair|
            pair[1] = value if pair[0] == key 
        end
    end

    def get(key)
        @u_array.each do |pair|
            return pair if pair[0] = key
        end
    end

    def delete(key)
        @u_array.reject! do |pair|
             if pair[0] = key
        end
    end

    def show
        @u_array.dup
    end
        
end
