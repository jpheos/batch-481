// def sum(arg1, arg2 = 0)
//   arg1 + arg2
// end

// sum(3, 4) // => 7
// sum(3) // => 3


// Old syntax (ES5)
// function sum(arg1, arg2 = 0) {
//   return arg1 + arg2;
// }

// var sum = function(arg1, arg2 = 0) {
//   return arg1 + arg2;
// }

// console.log(sum(2, 3))

// sum(4, 2) // => undefined


// New syntax (ES6)
const sum = (arg1, arg2) => {
  return arg1 + arg2;
}

console.log(sum);
console.log(sum(2, 4));

// One line syntax
const oneLineSum = (arg1, arg2) => arg1 + arg2;
console.log(oneLineSum(2, 4));






