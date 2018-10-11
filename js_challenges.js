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

function bubbleSort(array){
  for (var a = 0; a < array.length; a++) {
    for (var z = 1; z < array.length; z++) {
      if (array[z - 1] > array[z]) {
        swap(array, z - 1, z)
      }
    }
  }
  return array
}

console.log(bubbleSort(array.slice()))
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
        return 'That is prime'
}}

console.log(primeNumber(7))
console.log(primeNumber(12))
//Returns
//"That is prime"
//"Not prime."