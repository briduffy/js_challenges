#Alphabetize
#Return a string with characters in alaphabetical order.
#
def alphabetize(str)
  input = str.downcase.gsub(" ","").split("")
  output = input.sort
end

puts alphabetize("My name is Brianne.")