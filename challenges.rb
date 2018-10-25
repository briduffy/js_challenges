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
#require 'prime'
#
#def primeNumber
#  puts `clear`
#  puts 'PRIME NUMBER CHECKER: Enter a number!'
#  number = gets.strip.to_i
#  if Prime.prime?(number)
#    puts "#{number} is a prime number."
#  else
#    puts "#{number} is not prime."
#  end
#end
#primeNumber


#Capitalize First Letter
#
#def capitalLetter(string)
#  capitalize = string.split(' ').map(&:capitalize).join(' ')
#end
#puts capitalLetter('donald trump is a moron.')


#Coin Converter
#
#def coinConvert(number)
#  coin = []
#
#  quarters = (number/25).to_i
#  coin << quarters
#  number = number - (quarters * 25)
#
#  dimes = (number/10).to_i
#  coin << dimes
#  number = number - (dimes * 10)
#
#  nickels = (number/5).to_i
#  coin << nickels
#  number = number - (nickels * 5)
#
#  pennies = (number/1).to_i
#  coin << pennies
#  number = number - (pennies * 1)
#
#  puts coin 
#end
#puts coinConvert(76)


#Temperature Conversion
#
#def toF(c)
#  c * 9 / 5 + 32
#end
#
#puts `clear`
#puts "Enter a temperature in celcius.""
#c = gets.to_f
#puts "#{c} degrees celcius is equal to #{toF(c)} degrees fahrenheit." 
#
#def toC(f)
#  x = f - 32
#  y = x * 5 / 9
#end
#puts `clear`
#puts "Enter a temperature in fahrenheit."
#y = gets.to_f
#puts "#{y} degrees fahrenheit is equal to #{toC(y)} degrees celcius."
#Returns '68 degrees fahrenheit is equal to 20 degrees celcius."


#Reverse String
#def reverse(str)
#  str.downcase.split('').reverse.join('')
#end
#puts reverse('Brianne')
#Returns 'ennairb'


#Add spaces to a string at every space for X # of spaces
#
#def spaces(string, spaces = 0)
#  spaces.times do 
#    string = string.split('').join(' ')
#  end
#  return str
#end
#puts spacify('brianne', 2)
#Returns 'b   r   i   a   n   n   e'


#Paragraph Sort -- take in a string and return a sorted hash.
#
#def paragaph(string)
#   hash = Hash.new(0)
#   words = string.downcase.gsub /[^a-z0-9 ]+/i, ''
#   words.split.each { |i| hash[i] = hash[i] + 1 }
#   sorted = hash.sort_by {|k, v| [-v, k]}
#   sorted.to_h
# end
# puts paragaph("Dan Actor is a man, but is not actually an actor. Though, he is Dan and Dan is the man.")
#Returns {"is"=>4, "dan"=>3, "actor"=>2, "man"=>2, "a"=>1, "actually"=>1, "an"=>1, "and"=>1, "but"=>1, "he"=>1, "not"=>1, "the"=>1, "though"=>1}


# #Return the first unique character
# def uniqueCharacter(str)
#   start = []
#   arr = str.split("").sort
#   arr.each_index do |x|
#     if (arr[x] != arr[x +1] && arr[x] != arr[x -1])
#       start << arr[x]
#     end
#   end
#   puts 'The first unique character is...'
#   return start[0]
# end

# puts uniqueCharacter("pumpkinapplespice")
# #Returns 'a'


def max_min(array)
  return [nil, nil] if array.empty?
  min = (2 ** (0.size * 8 - 2) - 1)
  max = -(2 ** (0.size * 8 - 2))
  array.each do |i|
    min = i if i < min
    max = i if i > max
  end
  puts "#{max} is the highest number in the array."
  puts "#{min} is the lowest number in the array."
end
puts max_min([99, 33, 44, 22, 11, 88, 77, -11])