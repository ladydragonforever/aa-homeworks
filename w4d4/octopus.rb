# n
require "byebug"
def clever_octopus(arr)
    longest = ''
    (0...arr.length).each do |idx|
        longest = arr[idx] if longest.length <= arr[idx].length
    end
    return longest
end

# n^2
def sluggish_octopus(arr)
    longest = ''
    (0...arr.length).each do |i|
        (0...arr.length).each do |j|
            longest = arr[i]
            longest = arr[j] if arr[i].length <= arr[j].length
        end
    end
    return longest
                
end

# nlogn
def dominant_octopus(arr)
    p "arr : #{arr}"
    p "merge res : #{merge_sort(arr)}"
    merge_sort(arr).last

end

def merge_sort(arr)
    #    debugger
    return arr if arr.length <= 1
    middle = arr.length/2
    left = arr.take(middle)
    right = arr.drop(middle)

   merge(merge_sort(left), merge_sort(right))
  

end
def merge(left,right)
#  debugger
    result = []
    until left.empty? || right.empty?
        if left[0].length >= right[0].length
            result << right.shift
        else
            result << left.shift
        end
    end
    result+left+right
end

p clever_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
p sluggish_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
p dominant_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
 #"fiiiissshhhhhh"