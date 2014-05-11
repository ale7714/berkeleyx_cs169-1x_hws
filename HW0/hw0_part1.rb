# Alexandra Paredes 
# aept7714@gmail.com


# Define a method sum which takes an array of integers as an argument and
# returns the sum of its elements. For an empty array it should return zero.
def sum( array ) 
  array.reduce(0,:+)
end 

puts sum([])
puts sum([1,2,3,4,5,6])

# Define a method max_2_sum which takes an array of integers as an argument 
# and returns the sum of its two largest elements. For an empty array it should 
# return zero. For an array with just one element, it should return that element.
def max_2_sum(array)
    return 0 if array.empty?
    return array.first if array.length == 1
    return array.sort!{|x,y| y <=> x}.take(2).reduce(:+)
end

puts max_2_sum([])
puts max_2_sum([1])
puts max_2_sum([2,4,5])

# Define a method sum_to_n? which takes an array of integers and an additional
# integer, n, as arguments and returns true if any two distinct elements in the
# array of integers sum to n. An empty array or single element array should both
# return false.
def sum_to_n?(array, n)

   return false if array.empty? or array.length == 1
   array = array.sort!
   array.permutation(2).any?{ |a,b| a + b == n } 

end

puts sum_to_n?([3,4,5],8)
puts sum_to_n?([3,4,5],10)

