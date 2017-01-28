#---DIRECTIONS---
#Each method has only one or two small errors which stop it from
#working properly. The goal is not to rewrite the code, but to debug the
#method as it is currently written.

#Uncomment the code as you work through the problems

def range(min, max)
  return max if max < min
  range(min, max) << max
end

puts "---RANGE---"
puts "easy: #{range(1,1)} should equal [1]"
puts "medium: #{range(-3,5)} should equal [-3, -2, -1, 0, 1, 2, 3, 4, 5]"
puts "hard: #{range(5,2)} should equal []"
puts " "

# def sum_arr(arr)
#   return arr if arr.length == 1
#   sum_arr(arr[0...-1]) << arr
# end
#
# puts "---SUM_ARR---"
# puts "easy: #{sum_arr([1])} should equal 1"
# puts "medium: #{sum_arr([1,2,3,4])} should equal 10"
# puts "hard: #{sum_arr([1,-2,3,4,11,-5])} should equal 12"
# puts " "
#
# def fib(n)
#   return [0, 1] if n <= 1
#   thing = fib(n)
#   thing << thing[-1] + thing[-2]
# end
#
# puts "---FIB---"
# puts "easy: #{fib(0)} should equal [0]"
# puts "medium: #{fib(3)} should equal [0, 1, 1, 2]"
# puts "hard: #{fib(9)} should equal [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]"
# puts " "
#
#
# class Array
#   def deep_dup
#     arr = []
#     self.each do |el|
#       if el.is_a?(Array)
#         el.deep_dup
#       else
#         arr << el
#       end
#     end
#   end
# end
#
# puts "---DEEP_DUP---"
# puts "easy: #{[1].deep_dup} should equal [1]"
# puts "medium: #{[1,[2,3]].deep_dup} should equal [1,[2,3]]"
# puts "hard: #{[[1], 2, 3, [2,3,4,[5,6]], [6]].deep_dup} should equal [[1], 2, 3, [2,3,4,[5,6]], [6]]}"
# puts " "
#
# class Array
#   def my_flatten
#     arr = []
#     self.each do |el|
#       if el.is_a?(Array)
#         arr << el.my_flatten
#       else
#         arr << el
#       end
#     end
#     arr
#   end
# end
#
# puts "---MY_FLATTEN---"
# puts "easy: #{[1].my_flatten} should equal [1]"
# puts "medium: #{[1,[2,3]].my_flatten} should equal [1,2,3]"
# puts "hard: #{[[1], 2, 3, [2,3,4,[5,6]], [6]].my_flatten} should equal [1, 2, 3, 2, 3, 4, 5, 6, 6]"
# puts " "
#
# def permutations(arr)
#   return [] if arr.empty?
#   sets = permutations(arr[1..-1])
#   new_arr = []
#   sets.each do |el|
#     for i in 0..el.length
#       duplicate_el = el.dup
#       new_arr << duplicate_el.insert(i, arr[0])
#     end
#   end
#   new_arr
# end
#
# puts "---PERMUTATIONS---"
# puts "easy: #{permutations([1])} should equal [1]"
# puts "medium: #{permutations([1,2])} should equal [[1, 2], [2, 1]]"
# puts "hard: #{permutations([1,2,3])} should equal [[1, 2, 3], [2, 1, 3], [2, 3, 1], [1, 3, 2], [3, 1, 2], [3, 2, 1]]"
# puts " "
#
# def quick_sort(arr)
#   return arr if arr.length <= 1
#   pivot = arr.first
#   left = arr[1..-1].select{|n| n < pivot}
#   right = arr[1..-1].select{|n| n > pivot}
#   quick_sort(left) + pivot + quick_sort(right)
# end
#
# puts "---QUICK_SORT---"
# puts "easy: #{quick_sort([1])} should equal [1]"
# puts "medium: #{quick_sort([-1, 0, 2, 4, 10, 23])} should equal [-1, 0, 2, 4, 10, 23]"
# puts "hard (check duplicates!!!): #{quick_sort([-1, -1, 0, 2, 4, 10, 4])} should equal [-1, -1, 0, 2, 4, 4, 10]"
# puts " "
