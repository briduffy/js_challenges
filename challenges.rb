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
#
#puts bubble_sort(array)
#Returns [11, 22, 33, 44, 55, 66, 77, 88, 99]


# Sum of an Array
#
#array = [11, 22, 33, 44, 55, 66, 77, 88, 99]
#def sumArray(array)
#  sum = array.sum
#  puts sum
#end
#
#puts sumArray(array)
#Returns 495


# FizzBuzz
#
#def fizzBuzz
#  (1..50).each do |x|
#    array = []
#    array << x 
#    array << "Buzz" if x % 3 == 0
#    array << "Fizz" if x % 5 == 0 
#    array << "FizzBuzz" if x % 15 == 0
#    puts array
#  end
#end
#
#fizzBuzz
# Returns 1, 2, 3, Buzz, 4, 5, Fizz, 6, Buzz, 7, 8, 9, Buzz, 10, Fizz, 11, 12, Buzz,
#13, 14, 15, Buzz, Fizz, FizzBuzz, 16, 17, 18, Buzz, 19, 20, Fizz...etc.


# Average an Array
#
#array = [11, 22, 33, 44, 55, 66, 77, 88, 99]
#
#def averageArray(array)
#  total = array.sum
#  puts "The sum is #{total}."
#  average = total / array.length
#  puts "The average is #{average}."
#end
#
#puts averageArray(array)
# Returns "The sum is 495. The average is 55."


#Palindrome
#
#palindrome tester
#@letters = []
#@test = []

#def test
#  puts "Input a string to see if it is a palindrome"
#  @user_input = gets.strip.downcase.gsub(" ", "") 
#  @user_input.each_char { |c|  @letters << c }
#  reverse
#end

#def reverse
#  @letters.each {|l| @test.unshift(l) }
#  if @letters == @test
#    puts "#{@user_input} is a palindrome."
#  else 
#    puts "#{@user_input} is not a palindrome."
#  end
#end
#
#test
#Returns "racecar is a palindrome. apple is not a palindrome."


#Longest Word in an string
#
#sentence = 'Brianne is procrastinating going to the gym.'
#def LongestWord(sentence)
#  longest = sentence.strip.split(" ")
#  longest.sort_by!(&:length).reverse!
#  longest[0]
#end
#
#puts LongestWord(sentence)
#Returns "procrastinating"


#Prime Number Checker
#
def primeNumber
  puts `clear`
  puts 'PRIME NUMBER CHECKER: Enter a number!'
  number = gets.strip.to_i
  prime = 0
  (2...number).each { |i| number % i == 0 ? break : prime = 1 }
  if number == 1
    puts "#{number} is a prime number."
  else
    puts "#{number} is not prime."
  end
end
primeNumber
