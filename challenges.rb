#Alphabetize
#Return a string with characters in alaphabetical order.
#
#def alphabetize(str)
#  input = str.downcase.gsub(" ","").split("")
#  output = input.sort
#end
#
#puts alphabetize("My name is Brianne.")
# Returns ".aabeeiimmnnnrsy"


#String to an Array
#
#def array(str)
#  input = str.gsub("", " ")
#end
#
#puts array("Brianne.")
# Returns " B r i a n n e ."


#array = [33, 88, 22, 99, 11, 77, 44, 66, 55]
#
#def bubble_sort(array)
#  return array if array.size <= 1
#  swapped = true
#  while swapped do
#    swapped = false
#    0.upto(array.size-2) do |i|
#      if array[i] > array[i+1]
#        array[i], array[i+1] = array[i+1], array[i]
#        swapped = true
#      end
#    end    
#  end
#  array
#end

puts bubble_sort(array)
#Returns [11, 22, 33, 44, 55, 66, 77, 88, 99]