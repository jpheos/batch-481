const student = {
  firstName: "Boris",
  lastName: "Paillard"
};

console.log(student);
console.log(student['firstName']);
console.log(student.firstName);

// student['firstName'] = 'Romain';
student.firstName = 'Romain';
console.log(student);

// student['nickName'] = 'Papillard';
student.nickName = 'Papillard';
console.log(student);
