// Array
console.log(['Hello', 'world', true]);

// Object
console.log({ name: 'Bob', age: 42 });
console.log({ 'name': 'Bob', 'age': 42 });

// Variables
let age;
console.log(age);

let counter = 1;
counter = 2;
console.log(counter);

// Strings
const firstName = 'Paul';
console.log(firstName.length);
console.log(firstName[1]);
console.log(firstName[firstName.length - 1]); // Returns last char
console.log(firstName.substring(1));

const monthString = "Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec";
console.log(monthString.split(','));

// String interpolation
const lastName = 'McCartney';
// const fullName = firstName + ' ' + lastName;
const fullName = `${firstName} ${lastName}`;
console.log(fullName);

// Arrays
const fruits = ['banana'];
// CRUD
console.log(fruits[0]);
fruits.push('strawberry');
console.log(fruits);
fruits[0] = 'blueberry';
console.log(fruits);

const months = ['Jan', 'March', 'April', 'June'];
months.splice(2, 1);
console.log(months);

// Iteration on arrays
// months.each do |month|
//   puts month
// end


// (arg1, arg2) => {  };

months.forEach(month => {
  console.log(month.toUpperCase());
});









