//Alphabetize
//Return a string with characters in alaphabetical order.
//
function alphabetize(str) {
  var word = str.split("")
  return word.sort().join("")
}

console.log(alphabetize("alphabetize"))
//Returns "aabeehilptz"


//String to an Array
//
function array(str) {
  var array = str.split('') 
  return array
}

console.log(array("Brianne"))
//Returns ["B", "r", "i", "a", "n", "n", "e"]


//Bubble Sort
//Puts numbers in an array in descending order? Ascending order? Order?
//
var array = [11, 26, 88, 99, 1105, 44, 2, 3, 789, 123]

function swap(array, a, z) {
  var start = array[a]
  array[a] = array[z]
  array[z] = start
}

function bubble_sort(array){
  for (var a = 0; a < array.length; a++) {
    for (var z = 1; z < array.length; z++) {
      if (array[z - 1] > array[z]) {
        swap(array, z - 1, z)
      }
    }
  }
  return array
}

console.log(bubble_sort(array.slice()))
//Returns [2, 3, 11, 26, 44, 88, 99, 123, 789, 1105]

//Condtional Statement -- Largest of 5 Numbers with an Alert Box
//
a = 10
b = -2
c = 201
d = 2
e = -72

if (a>b && a>c && a>d && a>e) {
  alert(a)
}
else if (b>a && b>c && b>d && b>e) {
  alert(b)
}
else if (c>a && c>b && c>d && c>e) {
  alert(c)
}
else if (d>a && d>b && d>c && d>e) {
  alert(d)
}
else {
  alert(e)
}
//Returns an alert box with 201.


//Star Pattern
//
var a, b, star
for (a=1; a <=6; a++){
  for (b=1; b < a, b++){
    star=star+(" * ")
  }
  console.log(star)
  star=''
}
//Returns
//
//" * "
//" *  * "
//" *  *  * "
//" *  *  *  * "
//" *  *  *  *  * "
//
//When I do this in Codepen, it says undefined, and then returns the correct pattern,
//however, I do not know what is undefined.

//Concatenates
//
function repeat(string, num) {
  var climb = ''
  do {climb += string; num--}
  while(num)
  return climb
}

console.log(repeat('Climb more.'))
console.log(repeat('Climb more. ',2))
console.log(repeat('Climb more. ', 3))
console.log(repeat('Climb more. ', 4))
//Returns
//"Climb more."
//"Climb more. Climb more. "
//"Climb more. Climb more. Climb more. "
//"Climb more. Climb more. Climb more. Climb more. "

//String Chop
//Seperate strings into an array with #x of characters.
var string_chop = (function() {
  return function(string, chop){
    if (typeof chop === 'undefined' || string.length <= chop){
      return string
  }

var arr = Array()  

  while(string) {
    if (string.length >= chop) {
      arr.push(string.slice(0, chop))}
    else {
      arr.push(string.slice(0))}
      string = string.substr(chop)
    }
  return arr
  }
})()
  
console.log(string_chop('Climb more.'))
console.log(string_chop('Climb more. ',2))
console.log(string_chop('Climb more. ', 3))
console.log(string_chop('Climb more. ', 4))
//Returns
//"Climb more."
//["Cl", "im", "b ", "mo", "re", ". "]
//["Cli", "mb ", "mor", "e. "]
//["Clim", "b mo", "re. "]


//Prime Number Checker
function primeNumber(number) {
  for (var i = 2; i < number; i++)
    if (number % i === 0)
      { return 'Not prime.'
    } else {
        return 'That is prime.'
}}

console.log(primeNumber(7))
console.log(primeNumber(12))
//Returns
//"That is prime"
//"Not prime."


//Vowel Count
function vowel_count(string) {
  string = string.toLowerCase()
  var vowels = string.match(/[aeiou]/gi)
  return vowels.length
}
console.log(vowel_count("DevPoint Labs is AWESOME."))
//Returns
//9


//Greatest Common Divisor Between Mutilple Numbers					
let arr = [12, 36, 72]
let maxNum = Math.max(...arr)
						
function greatest(arr){    			
    arr.forEach(function (arrNum){
        if (maxNum === 0){
            return 1
        }
	if (arrNum % maxNum === 0) { 
	  return maxNum
	}
        maxNum--
        greatest()
    })
    return maxNum
}
console.log (greatest())
//Returns
//12


//Factorial
function factorial(num) {
  var result = num
  if (num === 0 || num === 1)
    return 1
  while (num > 1) {
    num--
  result = result * num
 }
  return result
}
console.log(factorial(7))
console.log(factorial(4))
//Returns
//5040
//24


//Second Vowel Counter? Opps.
function vowelCount(string) {
  var v = string.match(/[aeiou]/gi)
  return v === null ? 0 : v.length
}
console.log(("My name is Brianne Duffy."))
//Returns
//7

//Palindrome
function palindrome(string) {
  var word = string.toLowerCase().replace(/\s/g, '')
  var check = word.split("").reverse("").join("")
  if (word === check)
    return "That is a palindrome."
  else
    return "That is not a palindrome."   
}
console.log(palindrome("racecar"))
//Returns
//"That is a palindrome."


//Fibonacci Sequence
function fibonacci(num) {
  if (num <= 1)
    return 1
  else 
    return fibonacci(num - 1) + fibonacci(num - 2)
}
console.log(fibonacci(6))
//Returns 13


//Roman Numeral
function romanize(num) {
  var lookup = { M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90, L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1 }, roman = '', i
  for (i in lookup) {
    while (num >= lookup[i]) {
      roman += i
      num -= lookup[i]
    }
  }
  return roman
}
console.log(romanize(2018))
//Returns
//"MMXVIII"


//Humanize
function humanize(number) {
  if(number % 100 >= 11 && number % 100 <= 13)
      return number + "th"
  
  switch(number % 10) {
      case 1: return number + "st"
      case 2: return number + "nd"
      case 3: return number + "rd"
  }
  
  return number + "th";
}
console.log(humanize(1))
console.log(humanize(2))
console.log(humanize(3))
//Returns
//1st
//2nd
//3rd


//Text Truncation
textTruncate = function(str, length, ending) {
  if (length == null) {
    length = 100
  }
  if (ending == null) {
    ending = '...'
  }
  if (str.length > length) {
    return str.substring(0, length - ending.length) + ending
  } else {
    return str
  }
}
console.log(textTruncate('My name is Brianne.'))
console.log(textTruncate('My name is Brianne.', 9))
console.log(textTruncate('My name is Brianne.', 15,':)'))
// Returns
// "My name is Brianne."
// "My nam..."
// "My name is Br:)"

