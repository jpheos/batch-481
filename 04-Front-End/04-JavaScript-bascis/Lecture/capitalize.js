// Capitalize

const capitalize = (string) => {
  // Upcase only first char
  const firstLetter = string[0].toUpperCase();

  // Downcase rest of string
  const restOfString = string.substring(1).toLowerCase();

  // Return concatenation of both
  // return `${firstLetter}${restOfString}`;
  return firstLetter + restOfString;
};

console.log(capitalize('alenYA'));
